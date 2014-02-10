module.exports = (grunt) ->

  grunt.initConfig

    coffeelinter:
      options:
        force: yes
        configFile: 'coffeelintrc.json'
        reportConsole: no
        reporterOutput: 'coffeelinter/report.json'
      target: ['test/fixtures/child.coffee', 'test/fixtures/entry.coffee']


    nodeunit:
      tests: ['test/*_test.js']


  grunt.loadTasks 'tasks'
  grunt.registerTask 'default', 'coffeelinter'
  grunt.registerTask 'test', 'coffeelinter'

