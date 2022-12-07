function loadBag($this, sidBackup) {
    const sid = $this.attr('sid') ?? sidBackup
    const cmd = $this.attr('cmd') ?? 'getbagzb'

    $.get(`/bag/bagzb.php?sid=${sid}&cmd=${cmd}`, function (response) {
        $(".the-game").addClass('hidden')
        $(".the-bag").html(response)
    })
}

function loadDaoCu($this) {
    const sid = $this.attr('sid')
    const cmd = $this.attr('cmd')

    $.get(`/bag/daocu.php?sid=${sid}&cmd=${cmd}`, function (response) {
        $(".the-game").addClass('hidden')
        $(".the-bag").html(response)
    })

    return
}

$('#next-bag').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const cmd = $(this).attr('cmd')
    const limit = $(this).attr('limit')

    $.get(`/bag/bagzb.php?sid=${sid}&cmd=${cmd}&limit=${limit}`, function (response) {
        $(".the-game").addClass('hidden')
        $(".the-bag").html(response)
    })
})

$('#for-sale').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    if (!sid) {
        $.notify('Hành động không hơp lệ', {
            style: 'normal',
            globalPosition: 'bottom right',
        })

        return
    }

    const zbnowid = $(this).attr('zbnowid')

    if (!zbnowid) {
        $.notify('Hành động không hơp lệ', {
            style: 'normal',
            globalPosition: 'bottom right',
        })

        return;
    }

    const pay = $(this).prev().val();
    if (pay <= 0) {
        $.notify('Giá không hợp lệ', {
            style: 'normal',
            globalPosition: 'bottom right',
        })

        return;
    }

    $.post('/bag/hangforsale.php', { sid: sid, zbnowid: zbnowid, pay: pay }, function (response) {
        $.modal.close()
        $('.alert').html(response)
        loadBag($(this), sid)
    });
})

$('.bag-item_cup').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const zbnowid = $(this).attr('zbnowid')
    const _this = $(".bag-item_details[zbnowid='" + zbnowid + "']")

    $.get(`/bag/cuptrangbi.php?sid=${sid}&zbnowid=${zbnowid}`, function (response) {
        $.modal.close()
        _this.remove()

        $.notify(response, {
            style: 'normal',
            globalPosition: 'bottom right'
        })
    })
})

$('.bag-item_delete').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const zbnowid = $(this).attr('zbnowid')
    const _this = $(".bag-item_details[zbnowid='" + zbnowid + "']")

    $.get(`/bag/delete.php?sid=${sid}&zbnowid=${zbnowid}`, function (response) {
        $.modal.close()
        _this.remove()

        $.notify(response, {
            style: 'normal',
            globalPosition: 'bottom right'
        })
    })
})

$('.bag-item_upgrade').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const zbnowid = $(this).attr('zbnowid')
    const upsx = $(this).attr('upsx')
    const cmd = $(this).attr('cmd')

    $.get(`/bag/trangbiinfo.php?sid=${sid}&cmd=${cmd}&zbnowid=${zbnowid}&upsx=${upsx}`, function (response) {
        $('.teleport').html(response)
        // $(".teleport").modal({
        //     fadeDuration: 100
        // });
    })
})

$('.close-bag').unbind('click').bind('click', function () {
    console.log('close-bag')
    $('.the-bag').empty()
    $(".the-game").removeClass('hidden')
})

// Show detail item
$('.bag-item_details').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const cmd = $(this).attr('cmd')
    const zbnowid = $(this).attr('zbnowid')
    const uid = $(this).attr('uid')

    $.get(`/bag/trangbiinfo.php?sid=${sid}&cmd=${cmd}&zbnowid=${zbnowid}&uid=${uid}`, function (response) {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })

    return
})

$('.daocu-detail').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const djid = $(this).attr('djid')

    $.get(`/bag/daocuinfo.php?sid=${sid}&djid=${djid}`, function (response) {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })

    return
})

$('.buy-daocu').unbind('click').bind('click', function () {
    const _pay = $('.daocu-from').find('.pay').val()
    const _djcount = $('.daocu-from').find('.djcount').val()
    const sid = $(this).attr('sid')
    const djid = $(this).attr('djid')

    const url = `/bag/daocuinfo.php?sid=${sid}&djid=${djid}&pay=${_pay}&djcount=${_djcount}&action=pay`

    $.get(url, function (response) {
        $('.teleport').html(response)
        $.modal.close()
    })
})

// $('#use-trang-bi').unbind('click').bind('click', function () {
//     const sid = $(this).attr('sid')
//     const cmd = $(this).attr('cmd')
//     const zbnowid = $(this).attr('zbnowid')
//     const zbwz = $(this).attr('zbwz')
//
//     $.get(`/bag/usetrangbi.php?sid=${sid}&cmd=${cmd}&zbnowid=${zbwz}&uid=${zbwz}`, function (response) {
//         console.log('response', response)
//         // $('.teleport').html(response)
//         // $(".teleport").modal({
//         //     fadeDuration: 100
//         // });
//     })
// });

$('#bag').unbind('click').bind('click', function () {
    loadBag($(this))
    return
})

$('#bag-trangbi').unbind('click').bind('click', function () {
    loadBag($(this))
    return;
})

$('#bag-daocu').unbind('click').bind('click', function () {
    loadDaoCu($(this))
    return;
})

$('#bag-skill').unbind('click').bind('click', function () {
    return;
})

$('#bag-duocpham').unbind('click').bind('click', function () {
    return
})

$('#bag-item').unbind('click').bind('click', function () {
    loadBag($(this))
    return
})