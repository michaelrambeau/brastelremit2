module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    recess: {
        options:{
               compile:true,
               compress:true
        },         
        bootstrap:{
            files: [
                {src: 'src/less/bootstrap/bootstrap-custom.less',dest: 'out/css/bootstrap.css'}
            ]
        },    
        common:{
            files: [
                {src: 'src/less/common/common.less',dest: 'out/css/common.css'}
            ]
        },
        home:{
            files: [
                {src: 'src/less/home/home.less',dest: 'out/css/home.css'}
            ]
        },
        
        simpletest:{
            files: [
                {src: 'src/less/test.less',dest:'out/less/test.css'}
            ],    
            options:{
                compile:false
            }                
        }
    },
    
    watch: {
        bootstrap:{
            files: ['src/less/bootstrap/**/*.less'],
            tasks: ['recess:bootstrap']
        },
        common:{
            files: ['src/less/common/**/*.less'],
            tasks: ['recess:common']
        },
        home:{
            files: ['src/less/home/**/*.less'],
            tasks: ['recess:home']
        }
    }

  });

  // Load the plugin that provides the "uglify" task.
  //grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-recess');
  grunt.loadNpmTasks('grunt-contrib-watch');

  
  //grunt.registerTask('my-recess-task', ['recess:check']);
  
  grunt.registerTask('log', function(arg1) {
    //grunt.log.write('Logging some stuff...'+(new Date()).toString()).ok();
    grunt.log.writeln("Compile! "+arg1);
  });
  
//grunt.event.on('watch', function(action, filepath) {
//  grunt.config(['jshint', 'all'], filepath);
//});

};