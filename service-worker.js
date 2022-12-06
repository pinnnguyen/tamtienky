self.addEventListener("install", function(event) {
    event.waitUntil(
        caches.open("pwa").then(function(cache) {
            console.log("cache", cache)
            return cache.addAll([
                "/",
                "css/gamecss.css",
                "images/bg-home.jpg",
                "images/bg-pve.jpg",
                "images/fs_007_504.png",
                "images/gif/pet.gif",
                // "/script.js",
            ]);
        })
    );
});

self.addEventListener("fetch", function(event) {
    event.respondWith(
        caches.open("pwa").then(function(cache) {
            return cache.match(event.request).then(function(response) {
                // cache.addAll([event.request.url]);

                if(response) {
                    return response;
                }

                return fetch(event.request);
            });
        })
    );
});