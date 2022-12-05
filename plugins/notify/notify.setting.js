$.notify.addStyle('pve', {
    html: "<span data-notify-text/>",
    classes: {
        base: {
            "white-space": "nowrap",
            "background-color": "transparent",
            "padding": "5px",
            "right": "-7px",
            "bottom": "240px",
            "font-size": "10px",
            "font-weight": "600",
            "color": "white"
        },
    }
});

$.notify.addStyle('pve-auto', {
    html: "<span data-notify-text/>",
    classes: {
        base: {
            "background-color": "transparent",
            "padding": "5px",
            "right": "-7px",
            "bottom": "240px",
            "color": "white",
            "font-size": "10px",
            "font-weight": "600"
        },
    }
});

$.notify.addStyle('normal', {
    html: "<span data-notify-text/>",
    autoHideDelay: 500,
    globalPosition: 'bottom right',
    classes: {
        base: {
            "white-space": "nowrap",
            "background-color": "#573f36",
            "padding": "10px",
            "border": "2px solid white",
            "color": "white",
            "right": "-7px",
            "bottom": "10px"
        },
    }
});