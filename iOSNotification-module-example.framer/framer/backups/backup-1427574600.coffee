Framer.Device.deviceType = "iphone-5s-spacegray"

module = require("iOSNotification")

imageLayer = new Layer 
	x:0, y:0, width:Framer.Device.screen.width, height:Framer.Device.screen.height, image:"images/homescreen.png"
	
module.showNotification("My awesome app name", "now", "This is the message", "images/icon.png")