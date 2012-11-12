
// Dependencies
var exec = require('child_process').exec;
var colors = require('colors');
var fs = require('fs');
var hogan = require('hogan.js');
var path = require('path');


// Configurations
var config = {
  paths: {
    npmbin: './node_modules/.bin',
    sass: './lib/frag.sass',
    less: './lib/frag.less',
    dist: './dist/frag.css',
    distMin: './dist/frag.min.css'
  },
  pkg: JSON.parse(fs.readFileSync('./component.json', 'utf8'))
};
config.pkg.year = (new Date()).getFullYear();
var headTemplate = hogan.compile(fs.readFileSync('./config/head.txt', 'utf8'));


// Pre-task message
log("\n----------------------------------------".blue);
log("Frag Build Tool".blue.underline);


// Tasks

// Compile
desc('Compile the Sass source into CSS');
task('compile', ['compile:sass'], null, {async: true});
namespace('compile', function () {

  var compileSassDesc = 'Compile the Sass source into CSS';
  desc(compileSassDesc);
  task('sass', function () {
    log(compileSassDesc, 'task');
    compileSass(config.paths.sass, config.paths.dist);
  }, {async: true});

  var compileLessDesc = 'Compile the LESS source into CSS';
  desc(compileLessDesc);
  task('less', function () {
    log(compileLessDesc, 'task');
    compileLess(config.paths.less, config.paths.dist);
  }, {async: true});

});

// Default
task('default', ['compile'], null, {async: true});


// Post-task cleanup
jake.addListener('complete', function () {
  log("\n----------------------------------------\n".blue);
  process.exit();
});


// Functions

function renderHead () {
  return headTemplate.render(config.pkg);
}

function compileSass (inPath, outPath) {
  cmd([getCompileSassCommand(inPath, outPath)], 'Compiled successfully', null, {printStderr: true, breakOnError: true});
}

function getCompileSassCommand (inPath, outPath) {
  return 'echo "' + renderHead() + '`sass ' + inPath + '`" > ' + outPath;
}

function compileLess (inPath, outPath) {
  cmd([getCompileLessCommand(inPath, outPath)], 'Compiled successfully', null, {printStderr: true, breakOnError: true});
}

function getCompileLessCommand (inPath, outPath) {
  return 'echo "' + renderHead() + '`' + config.paths.npmbin + '/lessc ' + inPath + '`" > ' + outPath;
}


// Utilities

// Execute command
function cmd (commands, successMsg, callback, options) {
  jake.exec(commands, function () {
    if (successMsg) {
      log(successMsg, 'success');
    }
    if (typeof callback === 'function') {
      callback();
    }
    complete();
  }, options);
}

// Logging
function log (message, level) {
  var out = null;
  switch (level) {
    case 'task':
      out = '\n' + message.cyan;
      break;
    case 'success':
      out = message.green;
      break;
    case 'notice':
      out = message.yellow;
      break;
    case 'error':
      out = message.red;
      break;
    default:
      out = message;
      break;
  }
  console.log(out);
}
