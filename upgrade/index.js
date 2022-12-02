function upgrade ($this) {
    $.modal.close();
    const sid = $this.attr('sid')
    const cmd = $this.attr('cmd')
    const canshu = $this.attr('canshu')

    $.get(`/upgrade/index.php?sid=${sid}&cmd=${cmd}&canshu=${canshu}`, function (response) {
        const $teleport = $(".teleport-full")
        $teleport.html(response)
        $teleport.modal({
            fadeDuration: 250,
        });
    })
}

$('#upgrade-level').unbind('click').bind('click', function () {
    upgrade($(this))
})

$('#upgrade-now').unbind('click').bind('click', function () {
    upgrade($(this))
})