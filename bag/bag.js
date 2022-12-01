$('#bag').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const cmd = $(this).attr('cmd')

    $.get(`/bag/bagzb.php?sid=${sid}&cmd=${cmd}`, function (response) {
        $(".teleport-full").html(response)
        $(".teleport-full").modal({
            fadeDuration: 250,
        });
    })
})