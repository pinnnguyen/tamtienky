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

console.log('$', $)