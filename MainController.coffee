Observable = require('FuseJS/Observable')
InterApp = require("FuseJS/InterApp")
Auth = require("Auth")
#Auth.clientID
#Auth.clientSecret

class App
  constructor: ->
    console.log('App building...', new Date().toString())

  loginClicked: ->
    console.log(JSON.stringify(arguments))
    @startAuth()

  startAuth: ->
#    url = "https://github.com/login/oauth/authorize?client_id="
#    url = url + clientID + "&scope=repo" + "&redirect_uri=fusegithub://fusegithub/code"
    InterApp.launchUri("google.com")

module.exports = new App()