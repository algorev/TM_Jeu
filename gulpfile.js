const gulp = require("gulp");
const { series, parallel, src, dest, watch } = require("gulp");
const exec = require('child_process').exec;
const sass = require('gulp-sass')(require('sass'));

function transferStatic(cb) {
	return src("src/static/*").pipe(dest("bin/"));
	cb();
}

function buildStyles(cb) {
	exec('sass src/scss/style.scss bin/style.css', function (err, stdout, stderr) {
		console.log(stdout);
		console.log(stderr);
		cb(err);
	});
  };

function copyAssets(cb) {
	return src("src/assets/*").pipe(dest("bin/assets/"));
	cb();
}

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

let transferAll = parallel(transferStatic, buildStyles, copyAssets);
let compileGame = series(compileStory, compileCode);
let makeAll = parallel(compileGame, transferAll);

exports.default = makeAll;
exports.compile = compileGame;
exports.update = transferAll;
