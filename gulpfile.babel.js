'use strict';

import path from 'path';
import gulp from 'gulp';
import del from 'del';
// import swPrecache from 'sw-precache';
import autoprefixer from 'autoprefixer';
import cssnano from 'cssnano';
import gulpLoadPlugins from 'gulp-load-plugins';

import { create as bsCreate } from 'browser-sync';
const browserSync = bsCreate();

browserSync.init({
    proxy: "http://localhost:8888/iowa-law-review",
});

// import {output as pagespeed} from 'psi';
import pkg from './package.json';

const $ = gulpLoadPlugins();

// Lint JavaScript
function lint(){
  return gulp.src('./themes/iowa-law-review/scripts/**/*.js')
    .pipe($.eslint())
    .pipe($.eslint.format())
    .pipe($.if(!browserSync.active, $.eslint.failOnError()));
}


// Optimize images
function images(){
  return gulp.src('./themes/iowa-law-review/src/images/**/*')
    .pipe($.imagemin({
      progressive: true,
      interlaced: true
    }))
    .pipe(gulp.dest('./themes/iowa-law-review/dist/images'))
    .pipe($.size({title: './themes/iowa-law-review/dist/images'}))
    .pipe(browserSync.stream());
}


// Copy all files at the root level (app)
function copy(){

  return gulp.src([
       './themes/iowa-law-review/src/*',
       './themes/iowa-law-review/src/**/*',
       '!./themes/iowa-law-review/src/libs',
       '!./themes/iowa-law-review/src/libs/**/*',
       '!./themes/iowa-law-review/src/styles/**/*',
       '!./themes/iowa-law-review/src/scripts/**/*',
       '!./themes/iowa-law-review/templates',
       '!./themes/iowa-law-review/templates/**/*',
       '!./themes/iowa-law-review/*.html',
     ],{dot: true})
    .pipe(gulp.dest('./themes/iowa-law-review/dist/'))
    .pipe($.size({title: 'copy'}));
}

// Compile and automatically prefix stylesheets
function styles(){

    const AUTOPREFIXER_BROWSERS = [
      'ie >= 10',
      'ie_mob >= 10',
      'ff >= 30',
      'chrome >= 34',
      'safari >= 7',
      'opera >= 23',
      'ios >= 7',
      'android >= 4.4',
      'bb >= 10'
    ];

    var plugins = [
        autoprefixer({
          overrideBrowserslist: AUTOPREFIXER_BROWSERS
        }),
        cssnano()
    ];


  // Compile SCSS to CSS
  // For best performance, don't add Sass partials to `gulp.src`
  return gulp.src([
    './themes/iowa-law-review/src/styles/main.scss',
    './themes/iowa-law-review/src/styles/editor.scss'
  ])
    .pipe($.newer('.tmp/styles'))
    .pipe($.sourcemaps.init())
    .pipe($.sass({
      precision: 10,
      includePaths: [
        './themes/iowa-law-review/src/styles/bootstrap/',
        './themes/iowa-law-review/src/libs/bourbon/',
        './themes/iowa-law-review/src/libs/bootstrap-sass/',
        './themes/iowa-law-review/src/libs/bigfoot/src/scss/',
        './themes/iowa-law-review/src/libs/magnific-popup/src/css/',
        './themes/iowa-law-review/src/styles/lib/bootstrap-block-grid/src/',
        './themes/iowa-law-review/src/styles/lib/pagination/scss',
        './vendor/md/uiowa-bar/scss',
        './node_modules/'

      ]
    }).on('error', $.sass.logError))
    .pipe(gulp.dest('.tmp/styles'))
    // Concatenate and minify styles
    .pipe($.if('*.css', $.postcss(plugins)))
    .pipe($.size({title: 'styles'}))
    .pipe($.sourcemaps.write('./'))
    .pipe(gulp.dest('./themes/iowa-law-review/dist/styles'))
    .pipe(browserSync.stream());
};

// Concatenate and minify JavaScript. Optionally transpiles ES2015 code to ES5.
// to enable ES2015 support remove the line `"only": "gulpfile.babel.js",` in the
// `.babelrc` file.
function scripts(){
    return gulp.src([
      // Note: Since we are not using useref in the scripts build pipeline,
      //       you need to explicitly list your scripts here in the right order
      //       to be correctly concatenated
      './themes/iowa-law-review/src/libs/jquery/dist/jquery.js',
      './themes/iowa-law-review/src/libs/bootstrap-sass/assets/javascripts/bootstrap.js',
      './themes/iowa-law-review/src/libs/bigfoot/dist/bigfoot.js',
      './themes/iowa-law-review/src/libs/jquery-sticky/jquery.sticky.js',
      './themes/iowa-law-review/src/libs/magnific-popup/dist/jquery.magnific-popup.js',
      './themes/iowa-law-review/src/scripts/app.js'
    ])
      // Enabling $.newer() only pipes through the script that changed, instead of the
      // whole chain. The $.newer() in the scss task works b/c sass has its own import
      // step running after the newer() function call, which adds back in all the things that
      // didn't change. Our javascripts don't import each other, so all need to be
      // piped through on every rebuild.
      //.pipe($.newer('.tmp/scripts'))
      .pipe($.sourcemaps.init())
      .pipe($.babel())
      .pipe($.sourcemaps.write())
      .pipe(gulp.dest('.tmp/scripts'))
      .pipe($.concat('main.min.js'))
      .pipe($.uglify())
      // Output files
      .pipe($.size({title: 'scripts'}))
      .pipe($.sourcemaps.write('.'))
      .pipe(gulp.dest('./themes/iowa-law-review/dist/scripts'))
      .pipe(browserSync.stream());
};

//Scan your HTML for assets & optimize them
// No longer used as of 2019.10.01
function html() {
  return gulp.src('./themes/iowa-law-review/templates/**/*.ss')
    .pipe($.useref({
      searchPath: '{.tmp,app}',
      noAssets: true
    }))

    // Minify any HTML
    .pipe($.if('*.ss', $.htmlmin({
      removeComments: true,
      collapseWhitespace: true,
      collapseBooleanAttributes: false,
      removeAttributeQuotes: false,
      removeRedundantAttributes: true,
      removeEmptyAttributes: true,
      removeScriptTypeAttributes: true,
      removeStyleLinkTypeAttributes: true,
      removeOptionalTags: false
    })))
    // Output files
    .pipe($.if('*.ss', $.size({title: 'ss', showFiles: true})))
    .pipe(gulp.dest('./themes/iowa-law-review/templates/'))
    .pipe(browserSync.stream());
}


// Clean output directory
function clean(){
  return del(['.tmp', './themes/iowa-law-review/dist/*', '!dist/.git'], {dot: true})
}

function watch(){
  // gulp.watch(['./themes/iowa-law-review/**/*.html'], reload);
  // gulp.watch(['./themes/iowa-law-review/src/templates/**/*.ss'], gulp.series(html));
  gulp.watch(['./themes/iowa-law-review/src/styles/**/*.{scss,css}'], gulp.series(styles));
  gulp.watch(['./themes/iowa-law-review/src/scripts/**/*.js'], gulp.series(lint, scripts));
  gulp.watch(['./themes/iowa-law-review/src/images/**/*'], gulp.series(images));
}

// Build production files, the default task
gulp.task('default',
    gulp.series(
        clean,
        copy,
        gulp.parallel(
            styles,
            lint,
            scripts,
            images
        ),
        watch
    ),
);
