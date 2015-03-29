module = require("baconipsum")

layer = new Layer width:Framer.Device.screen.width, height:Framer.Device.screen.height, backgroundColor:null
layer.html = module.addBaconIpsumSentences(20)