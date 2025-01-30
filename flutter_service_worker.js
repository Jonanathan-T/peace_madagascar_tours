'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8c2ba22d2859ddb8bf74bb4c532b18a3",
"assets/AssetManifest.bin.json": "ea6a8d17525d542f44a3a4c6feed20ac",
"assets/AssetManifest.json": "936b639f4ff9b9b56a25c7395d07ee40",
"assets/assets/baobab.png": "238d163d63b14c217c5948fe1330649c",
"assets/assets/flight.png": "258bb9c7146f31d66ff89d3d66decf8d",
"assets/assets/images/IMG-20241113-WA0001.jpg": "8b56564b1a5010c8fa91fb00af8c501a",
"assets/assets/images/IMG-20241113-WA0002.jpg": "e64d828eff3f57c695c2bfe38d89ce18",
"assets/assets/images/IMG-20241113-WA0003.jpg": "cf7a62630558a78d5d5c7eb16f28bae6",
"assets/assets/images/IMG-20241113-WA0004.jpg": "47c41c7de0af678d7eb77ce9bb472c5c",
"assets/assets/images/IMG-20241113-WA0005.jpg": "09e9f416b6c95a56dc0385906e2be2c9",
"assets/assets/images/IMG-20241113-WA0006.jpg": "72b7b925d52c7e32de1318ae95355175",
"assets/assets/images/IMG-20241113-WA0007.jpg": "441bf1e1c3880409b7c05e31b13d9f18",
"assets/assets/images/IMG-20241113-WA0008.jpg": "2cf3f497344f85597bd87373829aab73",
"assets/assets/images/IMG-20241113-WA0009.jpg": "7d89715a62ae4f2a3e6f7fd14a700030",
"assets/assets/images/IMG-20241113-WA0010.jpg": "79785c6ea51e20dc2a216ec4f57c94d6",
"assets/assets/images/IMG-20241113-WA0011.jpg": "8d36bcecd20c3964c02a3fc0e606d203",
"assets/assets/images/IMG-20241113-WA0012.jpg": "090969678be969476fbbab9921bf7fb3",
"assets/assets/images/IMG-20241113-WA0013.jpg": "f6da99fc81c637ed2f29019ba6256268",
"assets/assets/images/IMG-20241113-WA0014.jpg": "041d6c29e99ffa9324b1c17ffa7aa1de",
"assets/assets/images/IMG-20241113-WA0015.jpg": "f725f72c75a9070f47a7661c2543ce16",
"assets/assets/images/IMG-20241113-WA0016.jpg": "0d864d32d85bc444e3b5ddc8cf1a837b",
"assets/assets/images/IMG-20241113-WA0017.jpg": "29e70acc742d893c1243c0f799a4a8ce",
"assets/assets/images/IMG-20241113-WA0018.jpg": "3b245b2a7a2076052470ebbf5cb0b6fa",
"assets/assets/images/IMG-20241113-WA0019.jpg": "b6055869a2fd74a656e6d4834ac839d9",
"assets/assets/images/IMG-20241113-WA0020.jpg": "657b24066228fbe6915065798fcf55e2",
"assets/assets/images/IMG-20241113-WA0021.jpg": "f53fbb3c2604d8608ea29ded304f4bbe",
"assets/assets/images/IMG-20241113-WA0022.jpg": "97fccad43d138079cb6acf2560116d78",
"assets/assets/logos/logo.png": "f7334b9a31e88051f984f1027f817804",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "67d796066dea9a5c6046a4a296ba061f",
"assets/NOTICES": "f0c2f2e2eccc7d782264c00aa3e0b515",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "bd48fecb9153ebb51934baef8a53ff2d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "6aca441147f3e935d5b219d1995dff05",
"/": "6aca441147f3e935d5b219d1995dff05",
"main.dart.js": "f978c61b4f5062e315e4814cd170aca9",
"manifest.json": "ccbbcc4cf9ce697ec85619d4160c6259",
"version.json": "5907bd744a9c20bd2f8ec74d5d669df1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
