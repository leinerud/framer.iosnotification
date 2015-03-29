Framer.Device.deviceType = "iphone-5s-spacegray"

module = require("iOSNotification")

imageLayer = new Layer 
	x:0, y:0, width:Framer.Device.screen.width, height:Framer.Device.screen.height, image:"images/homescreen.png"

triggerNotificationButton = new Layer image:"images/pressmebutton.png", width:404, height:102
triggerNotificationButton.center()

triggerNotificationButton.on Events.Click, (event, triggerNotificationButton) ->
	module.showNotification("My awesome app name", "now", "This is the message", "images/icon.png")