$('.attach-monster').unbind('click').bind('click', function () {
    const gid = $(this).attr('gid')
    const gyid = $(this).attr('gyid')
    const sid = $(this).attr('sid')
    const nowmid = $(this).attr('nowmid')

    // $.get(`game/ginfo.php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`, (response) => {
    //     $('.teleport').html(response)
    //     $(".teleport").modal({
    //         fadeDuration: 100
    //     });
    // })

    $.get(`game/pve.php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`, (response) => {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })

})

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
