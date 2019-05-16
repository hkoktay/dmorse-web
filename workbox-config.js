module.exports = {
  "globDirectory": "build/",
  "globPatterns": [
    "**/*.{ico,png,html,js,json,css}"
  ],
  "swSrc": "web/sw.js",
  "swDest": "build/sw.js",
  "globIgnores": [
    "../workbox-config.js"
  ]
};