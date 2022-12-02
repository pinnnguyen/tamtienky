function upgrade ($this) {
    // $.modal.close();
    const sid = $this.attr('sid')
    const cmd = $this.attr('cmd')
    const canshu = $this.attr('canshu')

    $.get(`/upgrade/index.php?sid=${sid}&cmd=${cmd}&canshu=${canshu}`, function (response) {
        $(".teleport-full").html(response)
    })
}

$('#upgrade-level').unbind('click').bind('click', function () {
    upgrade($(this))
    $(".teleport-full").modal({
        fadeDuration: 250,
    });
})

$('#upgrade-now').unbind('click').bind('click', function () {
    upgrade($(this))
})