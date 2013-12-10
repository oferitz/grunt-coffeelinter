module.exports = (grunt) ->

  grunt.initConfig

    coffeelinter:
      options:
        force: no
        configFile: '.coffeelintrc'
        reportConsole: yes
        reporterOutput: 'lint/foo.json'
      simple: ['test/fixtures/entry.coffee', 'test//fixtures/child.coffee']

  grunt.loadTasks 'tasks'
  grunt.registerTask 'default', 'coffeelinter'

