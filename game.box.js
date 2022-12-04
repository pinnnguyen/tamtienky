class box {
    constructor() {
        this.box = $("#box-player");
        this.y = 80;
        this.x = 25;
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