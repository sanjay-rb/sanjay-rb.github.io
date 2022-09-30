'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "520fb91825ef1f6f4097d7948e60cf7f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/images/app_01.png": "888f512710e535945f09adb071a4aff8",
"assets/images/app_02.png": "ee354c2789bd3973bd49b5686d31796d",
"assets/images/app_03.png": "6bf9849e8d6fba9b47702ea1af16523f",
"assets/images/app_04.png": "56e2b35200511edfdd9712308ea33840",
"assets/images/app_05.png": "7b84e8537a442ba4e4c93801f20b6402",
"assets/images/app_06.png": "ffdd7a00c09e8aeac837deab6f380e34",
"assets/images/app_07.png": "287f1d3abe2336c7f69818e50681c53c",
"assets/images/app_08.png": "8e4939433451282ae1a40cd22b08019b",
"assets/images/dice_01.png": "9a1fd675a1e2304fb512c8cb38b77306",
"assets/images/dice_02.png": "d71fd46e756d7eda41b794eed2e15946",
"assets/images/dice_03.png": "43205703cd26ab9569dc0e8fbb910256",
"assets/images/dice_04.png": "9ca718233cee1ca5b6f80e70caae7674",
"assets/images/dice_05.png": "d164f67d9fa8e6565cfe0bf4a57dd328",
"assets/images/dice_06.png": "158954fdcf9260a9d18661519de0b9b7",
"assets/images/me_01.jpg": "5a33fbe00a06efdad91d834459381280",
"assets/images/me_02.jpg": "0cbf4de59277405dcdf9ca20b1f40919",
"assets/images/me_03.jpg": "db447fd8caf66ffe1d160cfff4e2e1ba",
"assets/images/me_04.jpg": "fb0db92c906b9ed06cae2adb3caa0be5",
"assets/images/me_05.jpg": "3a985adfe6e29ef7adf5ea56df7776a7",
"assets/images/me_06.jpg": "c3d688725309cae3bc89dc3eb7a18d5a",
"assets/images/me_11.jpg": "461dc22bcf6b2f52cc6250113db25d6a",
"assets/images/me_12.jpg": "980769d3bcd4b3769eeff01be29c5578",
"assets/images/me_13.jpg": "4e895a3d539fc5a230a36802cdd96337",
"assets/images/me_14.jpg": "399a641257250ff4c3d6b2f5a2298019",
"assets/images/me_15.jpg": "4ecf13511f6aae68d5a85ece82a4f564",
"assets/images/me_16.jpg": "b43e8f6a323297a8c1a293162f006b30",
"assets/NOTICES": "c48844b3db76f921a774b40231032599",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "df2e74b5c1f957a4afde3ea0a99d263a",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "489b61d2e7dba7482e8fc84a426fc8ff",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "21c96fea9c5541e93cfb98a4b69844bc",
"icons/Icon-512.png": "2cc591bb280c5688026bd663e32680fa",
"icons/Icon-maskable-192.png": "21c96fea9c5541e93cfb98a4b69844bc",
"icons/Icon-maskable-512.png": "2cc591bb280c5688026bd663e32680fa",
"icons/me_15.jpg": "d7da6224c7f29e4485b40bc50859b2b3",
"index.html": "2defb282e97e60f96264ebfce1f229bc",
"/": "2defb282e97e60f96264ebfce1f229bc",
"main.dart.js": "dc346d3530937bd38cd27e7e93ca92c7",
"manifest.json": "bcf7fd14586c91687c323f129555d570",
"version.json": "ddf313f1432565846ca07c1037a4cde3"
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
