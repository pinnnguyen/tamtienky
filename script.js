window.addEventListener("load", () => {
    navigator.serviceWorker.register("/service-worker.js")
        .then(registration => {
            console.log("Service Worker is registered", registration);
        })
        .catch(err => {
            console.error("Registration failed:", err);
        });
});

window.addEventListener("beforeinstallprompt", (e) => {
    e.preventDefault();
    console.log("Ready to install...");
});