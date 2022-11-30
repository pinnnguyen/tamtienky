function refreshMonster(player) {
    const boxMonsters = $(".monster")
    const container = $('#monster-container');

    if (boxMonsters.length === 0) {
        const sid = player.attr('sid')
        $.get(`pve/refresh_monster.php?sid=${sid}`, (response) => {
            $('#box-monster').append(response)
            $('#auto-attach').trigger('click');
        })

        function refresh () {
            return new Promise(resolve => {
                $.get(`pve/refresh_monster.php?sid=${sid}`, (response) => {
                    resolve(resolve);
                })
            })
        }

        refresh().then(rs => {
            $('#box-monster').append(rs)
            $('#box-player').trigger('click')
        })
    }

    if (boxMonsters.length > 0) {
        for (let i = 0; i < boxMonsters.length; i++) {
            const topRandom = Math.floor(Math.random() * (400 - 20 + 1)) + 20;
            const leftRandom = Math.floor(Math.random() * (400 - 20 + 1)) + 20;

            const el = $(boxMonsters[i])

            el.css({
                top: topRandom + 'px',
                left: leftRandom + 'px',
            })
        }
    }
}

refreshMonster()

class box {
    constructor() {
        this.box = $("#box-player");
        this.y = 1;
        this.x = 1;
    }

    setPosition(y, x) {
        this.y = y;
        this.x = x;
    }

    draw() {
        this.box.css({
            top: this.y + "px",
            left: this.x + "px"
        })
    }

    up(i) {
        this.y += -i;
        this.draw()
    }

    right(i) {
        this.x += i;
        this.draw()
    }

    left(i) {
        this.x += -i;
        this.draw()
    }

    down(i) {
        this.y += i;
        this.draw()
    }
}

var box2 = new box();
box2.draw()

// variable holding your data
const trainState = {
    speedUp: 15,
    speedLeft: 15,
    upFinish: false,
    leftFinish: false,
    monsterCurrently: '',
    update() {
        if (this.upFinish && this.leftFinish) {
            doAttach($(this.monsterCurrently));
            this.upFinish = false
            this.leftFinish = false
        }
    },
    get doUpFinish() {
        return this.upFinish;
    },
    set doUpFinish(done) {
        this.upFinish = done;
        this.update(this.upFinish);
    },
    get doLeftFinish() {
        return this.leftFinish;
    },
    set doLeftFinish(done) {
        this.leftFinish = done;
        this.update(this.leftFinish);
    }
};

$('#auto-attach').unbind('click').bind('click', function () {
    const player = $("#box-player")
    const playerPosition = player.position()
    const boxMonsters = $(".monster")

    if (boxMonsters.length === 0) {
        refreshMonster(player);
        return
    }

    const ranI = random(boxMonsters.length)

    const monster = boxMonsters[ranI]
    trainState.monsterCurrently = monster
    const monsterPosition = $(monster).position();

    if (monsterPosition.left === playerPosition.left
        && monsterPosition.top === playerPosition.top) {
        // $('#auto-attach').trigger('click');
        return;
    }

    moveUp(monsterPosition, playerPosition, (top) => {
        if (!top) return
        playerPosition.top = top
        trainState.doUpFinish = true;
    })

    moveLeft(monsterPosition, playerPosition, (left) => {
        if (!left) return
        playerPosition.left = left
        trainState.doLeftFinish = true;
    })

})

function moveLeft(monsterPosition, playerPosition, fn) {
    let distance = 0,
        isLeft = false,
        timeSkip = 0

    if (monsterPosition.left === playerPosition.left) {
        fn()
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

    const run = setInterval(() => {
        timeSkip += 1

        if (!isLeft) {
            box2.right(1)
        }

        if (isLeft) {
            box2.left(1)
        }

        if (timeSkip == distance) {
            fn(distance)
            clearInterval(run)
        }
    }, trainState.speedLeft)
}

function moveUp(monsterPosition, playerPosition, fn) {
    let isLeft = false,
        distance = 0,
        timeSkip = 0

    if (monsterPosition.top === playerPosition.top) {
        fn()
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

    const run = setInterval(() => {
        timeSkip += 1

        if (!isLeft) {
            box2.down(1)
        }

        if (isLeft) {
            box2.up(1)
        }

        if (timeSkip == distance) {
            fn(distance)
            clearInterval(run)
        }
    }, trainState.speedUp)
}

function random(number) {
    return Math.floor(Math.random() * ((number - 1) - 0 + 1)) + 0
}

function doAttach($this) {
    const gid = $this.attr('gid')
    const gyid = $this.attr('gyid')
    const sid = $this.attr('sid')
    const nowmid = $this.attr('nowmid')

    $.get(`game/pve.php?gid=${gid}&cmd=pvegj&sid=${sid}&nowmid=${nowmid}`, (response) => {
        $('.alert').html(response)
        $(".alert").modal({
            fadeDuration: 100,
            autoHide: 200
        });

        $this.remove();
        $('#auto-attach').trigger('click');
    })
}