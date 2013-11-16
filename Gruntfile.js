module.exports = function (grunt) {

    grunt.initConfig({

        sass: {
            expanded: {
                options: {
                    style: 'expanded'
                },
                files: {
                    'build/frag.css': 'lib/frag.scss',
                    'build/frag-dtf.css': 'lib/frag-dtf.scss'
                }
            },
            compressed: {
                options: {
                    style: 'compressed'
                },
                files: {
                    'build/frag.min.css': 'lib/frag.scss',
                    'build/frag-dtf.min.css': 'lib/frag-dtf.scss'
                }
            }
        },

        watch: {
            sass: {
                files: ['lib/**/*.scss'],
                tasks: ['sass']
            }
        }

    });

    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['sass', 'watch']);

};