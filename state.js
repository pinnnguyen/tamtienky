const GANE_STATE = {
    autoAttach: false,
    update() {
        console.log("game", this.autoAttach)
    },
    get autoAttach() {
        return this.upFinish;
    },
    set autoAttach(auto) {
        this.autoAttach = auto;
        this.update();
    },
};


// variable holding your data
const PVE_STATE = {
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