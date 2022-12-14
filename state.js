// variable holding your data
const PVE_STATE = {
    speedUp: 5,
    speedLeft: 5,
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


$('.all-map').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    $.get(`game/allmap.php?sid=${sid}`, (response) => {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})

$('.pet').unbind('click').bind('click', function () {
    const sid = $(this).attr('sid')
    $.get(`pet/pet.php?sid=${sid}`, (response) => {
        $('.teleport').html(response)
        $(".teleport").modal({
            fadeDuration: 100
        });
    })
})