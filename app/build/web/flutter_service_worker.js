'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "12f74a2a058d36bf5e910d7638da75d9",
"splash/img/light-2x.png": "5dba9cd25a58f912df587898e169ae2a",
"splash/img/dark-4x.png": "152eba0420f26559b5313ab925644152",
"splash/img/light-3x.png": "3f96443918e19ab58cb8717fccef3a98",
"splash/img/dark-3x.png": "3f96443918e19ab58cb8717fccef3a98",
"splash/img/light-4x.png": "152eba0420f26559b5313ab925644152",
"splash/img/dark-2x.png": "5dba9cd25a58f912df587898e169ae2a",
"splash/img/dark-1x.png": "f75f8e4ef725112d64537c9485bd3409",
"splash/img/light-1x.png": "f75f8e4ef725112d64537c9485bd3409",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "c9d553ad6768c36e70713fdc6434f893",
"index.html": "6b1b69c1b5d846cb67593d63b5ae681c",
"/": "6b1b69c1b5d846cb67593d63b5ae681c",
"main.dart.js": "bd256aa55b94852aa272e9195c275570",
"flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"favicon.png": "7e4b8b2273112f4dd8cbf02036f36ac2",
"icons/Icon-192.png": "45c47fa673f70524b3ffaca243e89094",
"icons/Icon-maskable-192.png": "45c47fa673f70524b3ffaca243e89094",
"icons/Icon-maskable-512.png": "477d3d516651767eb83ae939a330628e",
"icons/Icon-512.png": "477d3d516651767eb83ae939a330628e",
"manifest.json": "af7ffeabdd3d1efa6d4a6bf3621fa83d",
"assets/AssetManifest.json": "46f198f611d2a86ac22178553233b7d6",
"assets/NOTICES": "7a7fada3bab8023836231b29ad614f6c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/rosaceae.png": "a5997d9c16d7a119aa155521cb97bb9a",
"assets/assets/images/wiki_logo.svg": "3775c991e10dcd0b594b18f5da4c6b7e",
"assets/assets/images/sepals.jpg": "880c5ec841ebf4145898402cfb017fe8",
"assets/assets/images/fabaceae.png": "e6d36dc2168691498f8335e935f58182",
"assets/assets/images/flower_fg.png": "c4d37a156215a9d0544bdd6e305d6cfa",
"assets/assets/images/asteraceae.png": "ea69a4571b8160da76c4ed068a1fa1d8",
"assets/assets/images/apiaceae.png": "3a3489549cbd71b574a9f4d842e0af23",
"assets/assets/images/caryophyllaceae.png": "82f7b158b36b90a8683f275a40d7d2f9",
"assets/assets/images/lamiaceae.png": "48e622912791fbfdf7757f076ff22ad2",
"assets/assets/images/boraginaceae.png": "5ba75ea34408bf6d9d22991b65c45186",
"assets/assets/images/brassicaceae.png": "a6f6b334b1c2fdad7816f6532981094a",
"assets/assets/images/lily.png": "f4dbb82edde796f9d6d8efaa8dd54bd4",
"assets/assets/images/flower_shadow_ios.png": "b8cb680dd8b386d943be535279ebe6e3",
"assets/assets/images/flower_web.png": "a05329734280f741ced1cf4edcd38ecd",
"assets/assets/images/flower_bg.png": "f60fefe372c1fa283ce0661b7e5438af",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
