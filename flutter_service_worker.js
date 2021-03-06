'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "35d2692be1f5a5ecccd90dc99e8cec23",
".git/config": "7b6913ee67d290b1f1adc52853106862",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "81121e1e9852c0a09c95741b6b0dbe3c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "83f3e19798c1a31c2541b3723c7735f6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "183ba93a428761e1615624164891efd6",
".git/logs/refs/heads/main": "58f8740b0e39aef4d0ae404b6fd18e21",
".git/logs/refs/remotes/origin/main": "28dea34ed84102d16e5a9d40322bd358",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/06/174f0abadb143963baf0c7ad83c94248970152": "e0ef8cb6523f195e6549f885abfc1cf7",
".git/objects/0a/1c5400987f355b1d1fb281298a417fcd3fc6a7": "06b732fe5310c42260c00413285b3424",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/10/253b9d5d5c874d9124989b56f4ad13d0e8a89d": "e2514811143ece9647d031d303f2e6ee",
".git/objects/10/f84af6b6f72fbd6ee6d43f3a4ae3572d71e749": "de8bb165cc79422d6c5e57223c43767d",
".git/objects/16/1b91986d78a26d70caa6617e7d4d0a17de7310": "5df74edeebc45243726c07799e30102a",
".git/objects/1d/9b382be880458d7eec6faf0efdbeccb96290f9": "d4e01b040358205f7fd4c24f5f19b9a8",
".git/objects/1e/ce1dd674f40f8d7816c4e4b685a3abd10d365e": "b76c1562061ed283820208b453a239cc",
".git/objects/1f/480e221f7f95993a70f28e7316d5a79aea5798": "795fbbd9090fd132e8c38549267e0759",
".git/objects/20/cd807635edf671b1ad590388fd5e090b0111bc": "d5a68c160cc6c2b7d04064af6232f7a5",
".git/objects/21/e7998e9680853c860baa8e88b372d08e95f8b5": "b220ed69bdad70d24fbcf60623f5ca72",
".git/objects/22/4738909d9220040ce0bcb01daeb85743b941e1": "2ee0289a1aeb5b500d45bf2fa8f8d5f0",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/24/f7e5765ddc3f502d1b15efd0d81cb934e4a572": "e1e920048b67fcfc9764e6bd7f588ac3",
".git/objects/25/193e9449bc4df633e098007113f6900029e4b6": "b3214bbeb93a800d68e0dd5e002ec469",
".git/objects/2a/cc59e970ba43e86f4bed7c3df4e8fdf15f0aa8": "02edeb88094a3678f2115f75711231c3",
".git/objects/2c/969fa17083682f768df4de5d5349c42685636a": "f5483f188ec0a3c00fd161e388fe481a",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/2f/9ae61a6337d456b5f9c179860969de7e0330ed": "5c178759dc72f29d6f971e6b99e3636d",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/33/eaab65bcbdfbca1c652036110480c339ee548b": "45754dc7377c70e9e585610bbf8618da",
".git/objects/39/fa295432eb20411c0b73ead9e9703bdf06a31d": "18bf0906d90707686463fad9e53fb882",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/3d/80b9f47244db14f5ffa3869c0dc5597536db21": "3253b6f7d1eaf57fb866ef642c09dc0f",
".git/objects/40/990d9c953d1483e720370de32e554120226d5e": "878955fbf84b865194480056bfdef23c",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4a/36abc747b1d1c101d27c6bfc70b8ae17fe1e61": "41692f41527ee72b3d69eb4674ea3011",
".git/objects/4c/1de84f2e546881d75b2d7f2089c3fc252a6956": "71b0318ee4eda1ee75559f8020667be2",
".git/objects/4d/2de3ff53a96c1b5be81b8e549dd0c3ca306f7f": "10de034a646e79be259de3e4dde3fc34",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/4f/68348a7d61dde5fe4c98ec65e866496c35f0a2": "54c96f8b05d02ca9e1fbb490ba11bf9b",
".git/objects/52/480a63b1f184ea74afb06662aa98fa98864864": "6f8b2cf71be2b4830601f9db57eded45",
".git/objects/52/6cb87038ed2872fd47b32efaff5bf10a92c94d": "d780adb7214d4f1f75ac6842fcecd600",
".git/objects/54/056241cdc7ca76b40d0c7841d7b6dd3f9f75e3": "4b1b4727e0e280ecf4186ff55800c54c",
".git/objects/54/f6ed5eb5fc80c3e385fd61c900ad05e2baf110": "c271e03807690fd7de2395eb4e71586b",
".git/objects/57/2f1176e0bb101e1441259f681b291990cd9241": "c4c79d566d85c7ccb02c7d2c39cfaa1a",
".git/objects/59/444461d57751e584e13a549d3c0af3ffb46717": "81233ecc288aaf78d8f7aca88bf5be67",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/5a/144385896be2ecb7a1998259c8fc3eeed70b6b": "b78b6beb094d91fa02d5ec104245367b",
".git/objects/5a/f9b774a8363b0a54356656756b6a1b2bd2ce09": "836cd9507023383c317e3fe436db5ebb",
".git/objects/5e/c7f0f4d7d7b481a8b9810c081a1e1632140fc0": "298db29ebbbac9af864915b9c2e4b85a",
".git/objects/62/0d84b42686125ca2606b514e6fd983a2733c03": "5cd3b628bbb0f11993a4a6ba144223b2",
".git/objects/6b/f1bc86298afda381e1e7b3753e8c4215282756": "0f0d434c7670e9973caf6c9f692ba943",
".git/objects/6c/1e5c09947468afe15e3217d8c53643e20d37f2": "9b131f79c5a9ddb55bfa7db99a1b2df9",
".git/objects/6d/033b505ac08795c9c69bd327eaa7ba1cd3155c": "9bdf26eca40b75056522f486776f2c37",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/77/1d1dc76d40b2ac035a3b032518d07ddec8164e": "800e93692974a90bcc8fa5a446b2c2ce",
".git/objects/77/46b05a2346b709d592f0ef8ed5246f3455a22f": "085b86b45b047d810ed661265608e15c",
".git/objects/77/7b1c86394e52e16a8c7ae137d16176e4562f30": "7b00125ec76fa59db1aabfc7fe853710",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7b/eb666af045ca7666936065be07541ddae6c4c2": "c392a35606cc3b381db2d296024f2586",
".git/objects/7c/bbbbed98bdc78ee93c68ca0d823c7d4eae1d2e": "ccebfce93c4f162c7dbd54c4902f980d",
".git/objects/7d/4c611535eddfd54e543080aa70c2b7cb6db406": "3e74fa6cc63b1eb978576e5d1b3239f0",
".git/objects/81/d5918beea6a9695b01026992f028ee8f59dea3": "c825f6a494238957462ba4cee5f8f410",
".git/objects/84/e7d5a556a18e36627d88a7966c79f2136a4ff2": "48312b16be8580a3ccceca386fd438d4",
".git/objects/87/c9f1d9a81f72c0627dcffde4c132d9170af857": "5e7f3a88d86eaa170e2af33bf803fcf2",
".git/objects/88/8313fe46e6ea59893cd52049427023e204def9": "cf2f77be486b90ae91ef5a1665249bc6",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/0d9be1da874bedbc009561d9cfe9cf8c07cabc": "32cf95f835acf65ed08dfdad5a2e6f66",
".git/objects/8c/49e74e463e1ffaeb57499a3a81fad06bb143c4": "d7a32a254ea106dcad23f583cecc3b38",
".git/objects/8f/291f1bb9bdf9bfe98a5a98e465e75a036fe9be": "e49809fd6ee352899b2c3ad1da5e16a7",
".git/objects/91/5e5075f9df2bb4c01f41dc370303800d400d0d": "2c30528b303f1edbfb504061b9dbe35a",
".git/objects/95/03cb734703474b384ad601e628889191fb24b9": "58f010b14ff29a67992c585335a27330",
".git/objects/95/440e86cd765a8bcef96dc052b51f95964d7280": "418141a6d0347dc79177adc3abb65bf2",
".git/objects/97/ae5bb08ddb75beb552daa8d5d6d7aebdd5193c": "c044994674771ab91af441aa99381bb3",
".git/objects/97/eaeff0fd0e59fcae37bb6eaa245f285ec65203": "8feebc0b82f46333076c4322b553307c",
".git/objects/9e/26dfeeb6e641a33dae4961196235bdb965b21b": "304148c109fef2979ed83fbc7cd0b006",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/a95a242633de58c36b1abf82e2e126248faab8": "0206c004b7a01bab0297f8185075ed53",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a8/eb4627894b7461d006b03b8c07f693aade85df": "5ac7f1e9e444b4eb1cbc8e38023e385f",
".git/objects/aa/5c60f4f006dcec4645baa50632b6a21e551b07": "aee554a183b8e6ecb7612a81b715d1a5",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ac/22597a23d357c5b262272c8f4d058882182f9a": "bcbe170498314d8f2c51a5d43fda1592",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bf/cfe2710c6b723bfb9eca398bf57167720b1781": "7e2892566f2a541ffb8ca96ac657bad8",
".git/objects/c1/2691269d8d76a7e3ff659838ac30ff2ae7ed58": "da01ca698fc0f668b5b3a1c78fbcc13a",
".git/objects/c3/a3d3d3283e2313751080267db96ab2f65e7d0a": "473c5069b097732ecb8993aa4ae46815",
".git/objects/c4/344b2423eb8428bed6bb71bc421f4ba500b362": "1ffd6bd622c8d64c46b9d9fcef9fa5e3",
".git/objects/c6/e9a6d5fbdc65c0ef1a64a9e184822c66b7696a": "65fc9f5eaf3aed7c0af852962f311b70",
".git/objects/c7/5cbec3be96d1f35879df0c779aa65b3b4556c8": "2c9753734ff4b8f9a9f96ed70c89afe5",
".git/objects/c9/c7dab8393b07ddb5281b4339322d4705ff21ea": "4e56eb8a8fcbfb25bfa12d2a06598fd8",
".git/objects/ce/e857570466197499e8e7a205523951f6902a30": "b5eab62fe9ea86827c976347096ea75c",
".git/objects/d1/89b9d78835ea9c665d339393b6c1855813630a": "5f0584d7c5d2d50c530d35a1de4a4ca0",
".git/objects/d1/c47f4b381434aadc5c991db409c0634ae789a1": "e6e97f829fe414edb4881a69ba679fe2",
".git/objects/d2/5914c96e13aa6e420348a25acde15cada5ef85": "6836ec76dd1cc2f6569ee48433b278aa",
".git/objects/d5/29e8e1f2c4a1a47461fa954213162c58714c64": "62d6c8dd695f5bcd0eacffb424f02b48",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/6d1dee4b9ee2e32875aa32736e4f61c4115306": "c1398b4d41dd3a6a02fe22a0b4238150",
".git/objects/da/fa650475a06686c98d37f2b73b4f36b72142cf": "aac8349d8c0242cc408a18f10d34b08a",
".git/objects/df/578b8e418acb6b73768094d7a30873eb457bd3": "56ba7f7426bbf2a6f3f4904221720845",
".git/objects/e3/e3244c361b7aa0fe03d06a384dc1ad4a2fc447": "9cb84475f62176855527a55f7ec456bd",
".git/objects/e4/98457725afbd1d161045cc57c63badf0b4f78b": "5fa684a4112c55ea5ae863c34353a292",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/5d0e539f807008fcc74ce70599dd803f125e46": "2ec3278568e508f8c9b5850ce2d55fbb",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f3/d5dda3ad25828692c55cde313aa32cb1043684": "04e76f375a27c1714f5ff83110f6da9f",
".git/objects/f8/eaaae511eb5395d40914eedce88d60f2f56fee": "5616eeec1fdb139b6218cd4d18b4e98f",
".git/objects/f9/a4d84ce07620b86ea9dd49e755a5a838419bc6": "b5fe87031d2683bddf40375d1e09684f",
".git/objects/fb/c802ec41fc48a3bf979832ddc04b2993c4386b": "0e3e70fc240a80643f6ba45951d5b091",
".git/objects/fd/d4d199744fc82d161858d97d58f90c65287f7f": "8c5063903b5ef44b427808c63be1ecb7",
".git/objects/fe/25352939c8b87b61a2c0a462be82c7d08e147f": "dae518e2c7eb5f12e0e5fcfe78806956",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/ff/3ddb9607202c628a9571f81e2fc32468004b37": "56a62704c0a001b0ad49eef717e6f0f3",
".git/ORIG_HEAD": "bd07a6e42ffeff342d96c795082e5901",
".git/packed-refs": "a891e6bb26eb0d480aef486a7e8ea166",
".git/refs/heads/main": "bd07a6e42ffeff342d96c795082e5901",
".git/refs/remotes/origin/main": "bd07a6e42ffeff342d96c795082e5901",
"assets/AssetManifest.json": "39dd47c3553c62049fbd4ce4ac448c34",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/images/me.jpg": "e75e7b7806dee83dbb177b3e467906d5",
"assets/NOTICES": "4e0579e960bae34df335d194ba6f5f24",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "538885862bc8a8920c4529d3729dc33c",
"/": "538885862bc8a8920c4529d3729dc33c",
"main.dart.js": "97300863402a7022e9c1c665e8b15c21",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"style.css": "e57b853c27da12decdf259d49a67b4a9",
"version.json": "009c9e65172e010890f7f65fde438006"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
