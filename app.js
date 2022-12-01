if ("serviceWorker" in navigator) {
    window.addEventListener("load", function() {
        navigator.serviceWorker
            .register("/serviceWorker.js")
            .then(res => console.log("service worker registered"))
            .catch(err => console.log("service worker not registered", err))
    })
}

// $('.attach-monster').unbind('click').bind('click', function () {
//     const gid = $(this).attr('gid')
//     const gyid = $(this).attr('gyid')
//     const sid = $(this).attr('sid')
//     const nowmid = $(this).attr('nowmid')
//
//     $.get(`game/pve.php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`, (response) => {
//         $('.teleport').html(response)
//         $(".teleport").modal({
//             fadeDuration: 100
//         });
//     })
//
// })

$('.all-map').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    $.get(`game/allmap.php?sid=${sid}`, (response) => {
        console.log('response', response)
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})

$('.pet').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    $.get(`pet/pet.php?sid=${sid}`, (response) => {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})

//
// $.get(`game/pve.php?sid=&sid=${sid}`, (response) => {
//     console.log("res", response)
// })
