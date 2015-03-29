textLayerOffsetX = 92

exports.showNotification = ( appname, timeago, message, imagepath ) ->

	#Setup all the awesome layers
	notificationLayer = new Layer width:Framer.Device.screen.width, height:136, backgroundColor:"#000", opacity:0.9
	notificationLayer.y = -notificationLayer.height
	barLayer = new Layer width: 74, height:10, backgroundColor:"#ccc", opacity:0.5, borderRadius:10, y:notificationLayer.height-20, superLayer:notificationLayer
	barLayer.x = (notificationLayer.width/2)-(barLayer.width/2)

	iconLayer = new Layer height:40, width:40, x:30, y:7, image:imagepath, superLayer:notificationLayer

	appNameTextLayer = new Layer x:textLayerOffsetX, height:30, y:11, superLayer:notificationLayer, backgroundColor:null
	appNameTextLayer.html = "<span style='font-size:20pt;color:#fff;font-weight:bold;'>#{appname}</span>"
	appNameTextLayer.width = Utils.textSize(appNameTextLayer.html).width

	timeagoTextLayer = new Layer height:30, y:11, x:(appNameTextLayer.x + Utils.textSize(appNameTextLayer.html).width)+14 , superLayer:notificationLayer, backgroundColor:null
	timeagoTextLayer.html = "<span style='font-size:14pt;color:#fff'>#{timeago}</span>"
	timeagoTextLayer.width = Utils.textSize(timeagoTextLayer.html).width

	messageTextLayer = new Layer({x:textLayerOffsetX, y:appNameTextLayer.height+10, width:Framer.Device.screen.width-120, height:100, superLayer:notificationLayer, backgroundColor:null})
	messageTextLayer.html = "<span style='font-size:18pt;color:#fff;'>#{message}</span>"
	#Setup all the awesome layers


	#Setup and show the notification
	notificationLayer.states.add({
		hide: {y:notificationLayer.y},
		show: {y:0},
	})
	notificationLayer.states.animationOptions = {
    time:0.5,
		curve: "ease-in"
	}
	notificationLayer.states.switch("show")
	#Setup and show the notification

	#And hide the notification again
	Utils.delay 6, ->
		notificationLayer.states.switch("hide")
	#And hide the notification again
