# framer.iosnotification
A framer module that mimics an iOS notification.

![Gifs is making our lifes better] (https://lh5.googleusercontent.com/S_dkmJSUc4rRQmXmHsVqznCUeyQRvDTEju9bl3Ki3Ut0s7zlrZiCGLqoTCJaIGE8UKSBUSalmyesrAI=w2560-h2068)

## Installation
Put iOSNotification.coffee in the modules folder.

## Usage
Require the module:
````
module = require("iOSNotification")
````

Run the function when you want a notification (showNotification(appname, timeago, message, imagepath):
````
module.showNotification("My awesome app name", "now", "This is the message", "images/icon.png"
````
