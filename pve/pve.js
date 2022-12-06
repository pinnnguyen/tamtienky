function refreshMonster($player) {
    const monster = $(".monster")
    const bMonster = $('#box-monster');

    if (monster.length === 0) {
        if (!$player) return;
        const sid = $player.attr('sid')
        if (!sid) return
        $.get(`pve/refresh_monster.php?sid=${sid}`, (response) => {
            bMonster.append(response)
            prevAttach()
        })
    }

    if (monster.length > 0) {
        for (let i = 0; i < monster.length; i++) {
            const topRandom = Math.floor(Math.random() * (230 - 20 + 1)) + 20;
            const leftRandom = Math.floor(Math.random() * (290 - 20 + 1)) + 20;

            const el = $(monster[i])

            el.css({
                top: topRandom + 'px',
                left: leftRandom + 'px',
            })
        }
    }
}

$('#auto-attach').unbind('click').bind('click', function () {
    console.log('doAttach')
    doAttach($(this))
})

function prevAttach() {
    const player = $("#box-player")
    const playerPosition = player.position()
    const boxMonsters = $(".monster")

    if (boxMonsters.length === 0) {
        refreshMonster(player);
        return
    }

    const ranI = random(boxMonsters.length)
    const monster = boxMonsters[ranI]

    PVE_STATE.monsterCurrently = monster
    const monsterPosition = $(monster).position();

    if (monsterPosition.left === playerPosition.left
        && monsterPosition.top === playerPosition.top) {
        return;
    }

    moveUp(monsterPosition, playerPosition, (top) => {
        if (!top) return
        playerPosition.top = top
        PVE_STATE.doUpFinish = true;
    })

    moveLeft(monsterPosition, playerPosition, (left) => {
        if (!left) return
        playerPosition.left = left
        PVE_STATE.doLeftFinish = true;
    })
}

async function moveLeft(monsterPosition, playerPosition, fn) {
    let distance = 0,
        isLeft = false,
        timeSkip = 0;

    if (monsterPosition.left === playerPosition.left) {
        fn()
        return
    }

    if (monsterPosition.left > playerPosition.left) {
        distance = monsterPosition.left - playerPosition.left
    } else if (monsterPosition.left < playerPosition.left) {
        isLeft = true
        distance = playerPosition.left - monsterPosition.left
    }

    if (distance <= 0) {
        fn()
    }

    let startInterval = null
    startInterval = setInterval(() => {
        timeSkip += 1
        if (timeSkip >= distance - 15) {
            fn(distance)
            clearInterval(startInterval)
        }

        if (!isLeft) {
            box2.right(1)
        }

        if (isLeft) {
            box2.left(1)
        }

    }, 10)
}

async function moveUp(monsterPosition, playerPosition, fn) {
    let isLeft = false,
        distance = 0,
        timeSkip = 0;

    if (monsterPosition.top === playerPosition.top) {
        fn()
        return
    }

    if (distance <= 0) {
        fn()
    }

    if (monsterPosition.top > playerPosition.top) {
        distance = monsterPosition.top - playerPosition.top;
    } else if (monsterPosition.top < playerPosition.top) {
        distance = playerPosition.top - monsterPosition.top;
        isLeft = true
    }

    let startInterval = null
    startInterval = setInterval(() => {
        timeSkip += 1

        if (timeSkip >= distance - 15) {
            fn(distance)
            clearInterval(startInterval)
        }

        if (!isLeft) {
            box2.down(1)
        }

        if (isLeft) {
            box2.up(1)
        }

    }, 10)
}

function random(number) {
    return Math.floor(Math.random() * ((number - 1) + 1))
}

function doAttach($this) {
    const gid = $this.attr('gid')
    const sid = $this.attr('sid')
    const nowmid = $this.attr('nowmid')
    const gyid = $this.attr('gyid')

    axios.get(`/game/ginfo.php?gid=${gid}&gyid=${gyid}&sid=${sid}&nowmid=${nowmid}`).then((res) => {
        $(".teleport").html(res.data)
        $(".teleport").modal({
            fadeDuration: 250,
        });
    })

    // axios.get(`game/pve.php?gid=${gid}&cmd=pvegj&sid=${sid}&nowmid=${nowmid}`).then((res) => {
    //     $('.teleport').html(res.data?.html)
    //     $('.teleport').modal({
    //         fadeDuration: 200
    //     })
    //
    //     console.log('res', res.data)
    //
    //     // const delay = setTimeout(() => {
    //     //     $this.remove();
    //     //     prevAttach()
    //     //     clearTimeout(delay)
    //     // }, 200)
    // })
}

refreshMonster()