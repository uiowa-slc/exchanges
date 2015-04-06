module.exports = function(grunt) {


  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    //compile the sass

    sass: {
      dist: { 
        files: {
          'themes/exchanges/css/app.css' : 'themes/exchanges/scss/app.scss'
        },                  // Target
        options: {              // Target options
          style: 'compressed',
          sourcemap: 'true',
          loadPath: ['themes/exchanges/bower_components/foundation/scss']
        }
      }
    },

    //concat all the files into the build folder

    concat: {
      js:{
        src: [
          'themes/exchanges/bower_components/foundation/js/foundation.js',
          'themes/exchanges/bower_components/blazy/blazy.js',
          'themes/exchanges/javascript/*.js'
        ],
        dest: 'themes/exchanges/build/build.src.js'
      }
    },

    //minify those concated files
    //toggle mangle to leave variable names intact

    uglify: {
      my_target:{
        files:{
        'themes/exchanges/build/build.js': ['themes/exchanges/build/build.src.js'],
        }
      }
    },

    watch: {
      scripts: {
        files: ['themes/exchanges/javascript/*.js', 'themes/exchanges/javascript/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: true,
        }
      },
      css: {
        files: ['themes/exchanges/scss/*.scss', 
                'themes/exchanges/scss/**/*.scss'
                ],
        tasks: ['sass'],
        options: {
          spawn: true,
        }
      }
    },

    criticalcss: {
            custom: {
                options: {
                    url: "http://localhost:8888/exchanges",
                    width: 1200,
                    height: 900,
                    outputfile: "themes/exchanges/templates/Includes/CriticalCss.ss",
                    filename: "themes/exchanges/css/app.css", // Using path.resolve( path.join( ... ) ) is a good idea here
                    buffer: 800*1024,
                    ignoreConsole: false,
                    forceInclude: ['.main', '.row', '.large-6', '.large-7', '.columns', '.breadcrumb', '.Article .row']
                }
            }
        }

  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-criticalcss');
  //grunt.loadNpmTasks('grunt-simple-watch');

  // Default task(s).
  // Note: order of tasks is very important
  grunt.registerTask('default', ['sass', 'concat', 'uglify','criticalcss', 'watch']);
 //grunt.registerTask('default', ['sass', 'concat', 'uglify', 'watch']);

};