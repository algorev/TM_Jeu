const gulp = require("gulp");
const { series, parallel, src, dest, watch } = require("gulp");
const exec = require('child_process').exec;

function transferStatic(cb) {
	return src("src/static/*").pipe(dest("bin/"));
	cb();
}

function copyAssets(cb) {
	return src("src/assets/*").pipe(dest("bin/assets/"));
	cb();
}

let transferAll = series(transferStatic, copyAssets);

function compileCode(cb) {
	exec('haxe build.hxml', function (err, stdout, stderr) {
		console.log(stdout);
		console.log(stderr);
		cb(err);
	});
}

function compileStory(cb) {
	exec('python3 compiler/compiler.py src/story _tempstory.json', function (err, stdout, stderr) {
		console.log(stdout);
		console.log(stderr);
		cb(err);
	});
}

exports.watchSite = function () {
	watch("src/static/*", transferStatic);
}

let compileGame = series(compileStory, compileCode);
let makeAll = parallel(compileGame, transferAll);

exports.default = makeAll;
exports.compile = compileGame;
exports.update = transferAll;
