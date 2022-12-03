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

$('.delete-item').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    const zbnowid = $(this).attr('zbnowid')

    $.get(`/bag/cuptrangbi.php?sid=${sid}&zbnowid=${zbnowid}`, function (response) {
        $.modal.close()
        $('.teleport').html(response)
        loadBag($(this), sid)

        return
    })
})

$('.upgrade-trangbi').unbind('click').bind('click', function () {
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

$('#close-bag').unbind('click').bind('click', function () {
    $('.the-bag').empty()
    $(".the-game").removeClass('hidden')

    return;
})

// Show detail item
$('.trangbi-defail').unbind('click').bind('click', function () {
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