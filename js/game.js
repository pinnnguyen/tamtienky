// let installEvent = null;
// // let installButton = document.getElementById("install");
// // let enableButton = document.getElementById("enable");
//
// // enableButton.addEventListener("click", function() {
// //     this.disabled = true;
// //     startPwa(true);
// // });
//
// // if(localStorage["pwa-enabled"]) {
// //     startPwa();
// // }
//
//
// function startPwa() {
//     window.addEventListener("load", () => {
//         navigator.serviceWorker.register("/pwa/service-worker.js")
//             .then(registration => {
//                 console.log("Service Worker is registered", registration);
//             })
//             .catch(err => {
//                 console.error("Registration failed:", err);
//             });
//     });
//
//     window.addEventListener("beforeinstallprompt", (e) => {
//         e.preventDefault();
//         console.log("Ready to install...");
//         installEvent = e;
//         document.getElementById("install").style.display = "initial";
//     });
//
//     setTimeout(cacheLinks, 500);
//
//     function cacheLinks() {
//         caches.open("pwa").then(function(cache) {
//             let linksFound = [];
//             document.querySelectorAll("a").forEach(function(a) {
//                 linksFound.push(a.href);
//             });
//
//             cache.addAll(linksFound);
//         });
//     }
//
//     // if(installButton) {
//     //     installButton.addEventListener("click", function() {
//     //         installEvent.prompt();
//     //     });
//     // }
// }
//
// startPwa();