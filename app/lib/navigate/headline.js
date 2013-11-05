jQuery.fn.lavaLamp = function(b) {
    b = this.extend({fx: "easeOutBack",speed: 700,click: function() {
        }}, b || {});
    return this.each(function() {
        var c = $(this), f = function() {
        }, h = $('<li class="back"><div class="left"></div></li>').appendTo(c), k = $("li a", this), g = $("li.active", this)[0] || $(k[0]).addClass("active")[0];
        k.not(".back").hover(function() {
            d(this)
        }, f);
        $(this).hover(f, function() {
            d(g)
        });
        k.click(function(l) {
            if(!$(this).hasClass("outlink")){
                 e(this);
            }
            return b.click.apply(this, [l, this])
        });
        e(g);
        function e(l) {
            h.css({left: l.offsetLeft + "px",width: l.offsetWidth + "px"});
            g = l
        }
        function d(l) {
            h.each(function() {
                $.dequeue(this, "fx")
            }).animate({width: l.offsetWidth,left: l.offsetLeft}, b.speed, b.fx)
        }
    })
}

