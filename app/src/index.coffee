global._                =   require('underscore')
global.$                =   require('jquery')
global.Backbone         =   require('backbone')
Backbone.$              =   $

# basic backbone example files
Data       = require('./data.coffee')
Model      = require('./model.coffee')
Collection = require('./collection.coffee')
View       = require('./view.coffee')

#main function goes here -->
model = new Model({name: 'Andrew', occupation: 'Software Craftsman'})
window.view = new View({model: model})
window.view.render()
