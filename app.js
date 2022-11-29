$('.attach-monster').unbind('click').bind('click', function () {
    const gid = $(this).attr('gid')
    const gyid = $(this).attr('gyid')
    const sid = $(this).attr('sid')
    const nowmid = $(this).attr('nowmid')

    $.get(`game/ginfo.php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`, (response) => {
        console.log('response', response)
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})

$('.all-map').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    $.post(`game/allmap.php?sid=${sid}`, (response) => {
        console.log('response', response)
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})

$('.pet').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    $.post(`pet/pet.php?sid=${sid}`, (response) => {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})

// $('.pet-handle').unbind('click').bind('click', function () {
//     console.log("click")
//     const sid = $(this).attr('sid')
//     const canshu = $(this).attr('canshu')
//     const cwid = $(this).attr('cwid')
//
//     $.get(`pet/pet.php?sid=${sid}&canshu=${cansu}&cwid=${cwid}`, (response) => {
//         console.log('response', response)
//         $('.teleport').html(response)
//         // $(".teleport").modal({
//         //     fadeDuration: 100
//         // });
//     })
// })

