importScripts('https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js');

if (workbox) {
  console.log(`Workbox is loaded`);
  workbox.precaching.precacheAndRoute([]);
} else {
  console.log(`Workbox didn't load`);
}