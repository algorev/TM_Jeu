const gulp = require("gulp");
const { series, parallel, src, dest, watch } = require("gulp");
const exec = require('child_process').exec;

function transferStatic(cb) {
	return src("src/static/*").pipe(dest("bin/"));
	cb();
}

function compileCode(cb) {
	exec('haxe build.hxml', function (err, stdout, stderr) {
		console.log(stdout);
		console.log(stderr);
		cb(err);
	});
}

exports.watchSite = function () {
	watch("src/static/*", transferStatic);
}

let makeAll = parallel(compileCode, transferStatic);

exports.default = makeAll;
exports.compile = compileCode;
exports.update = transferStatic;
