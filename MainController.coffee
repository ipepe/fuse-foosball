Observable = require('FuseJS/Observable')
InterApp = require("FuseJS/InterApp")

InterApp.onReceivedUri = (uri) =>
  console.log(uri.replace('fusefoosball://user/login?cookies_base64=', ''))

class App
  constructor: ->
    console.log('App building...', new Date().toString())

  loginClicked: =>
    url = "http://foos.ipepe.pl/users/auth/google_oauth2?origin=fusefoosball://user/login"
    InterApp.launchUri(url)

module.exports = new App()