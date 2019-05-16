# Dmorse

This application is just a simple example of an progressive web application.

# Summary

Dmorse is a simple progressive web application to translate text into morse code.
It is written in [dart](https://dart.dev) or to be more specific it is written
in [AngularDart](https://angulardart.dev). You can find more information about
progressive web applications on google's [developer website](https://developers.google.com/web/progressive-web-apps/).
You can also try it out [online]().

# Usage

If you already have installed the dart sdk version 2.3 and [webdev](https://dart.dev/tools/webdev)
tool, simply clone the repository and start the web development server in the
project directory. 

    webdev serve

To use the application open your browser at [localhost](http://localhost:8080/).

# Additional Information

To compile the application use the ```build``` option of webdev.

    webdev build --output web:build

This uses the production compiler ```dart2js``` and compiles everything in the
web directory to the build directory. You can find more information on how to
optimize for production on the [dart website](https://dart.dev/tools/dart2js).

If you use the chrome or chromium browser you can install dmorse by clicking on
the setting menu and then on "install Dmorse". Use ```build_runner```
to run the tests:

    pub run build_runner test --fail-on-severe -- -p chrome

Unfortunately the tests are not complete, they cover only the absolute minimum.
They show only the basic usage of pageobjects for testing.

This application uses [workbox](https://developers.google.com/web/tools/workbox/)
to generate a service worker. Currently the service worker is created with the
workbox-cli tool. In the future this I will change this into a build step for
[build_runner](https://pub.dev/packages/build_runner).
