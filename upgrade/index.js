$('#upgrade-level').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const cmd = $(this).attr('cmd')

    $.get(`/upgrade/index.php?sid=${sid}&cmd=${cmd}`, function (response) {
        $(".teleport-full").html(response)
        $(".teleport-full").modal({
            fadeDuration: 250,
        });
    })
})