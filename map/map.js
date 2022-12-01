$('.attach-monster').unbind('click').bind('click', function () {
    console.log('click 1')
    const gid = $(this).attr('gid')
    const gyid = $(this).attr('gyid')
    const sid = $(this).attr('sid')
    const nowmid = $(this).attr('nowmid')

    $.get(`/game/ginfo.php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`, (response) => {
        $(".teleport").html(response)
        $(".teleport").modal({
            fadeDuration: 250,
        });
    })
})

// Show B.lô
