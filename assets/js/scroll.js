$(document).ready(function(){
    $("a").on("click", function(event) {
        if (this.hash !== "" && this.pathname === window.location.pathname) {
            var hash = this.hash;
            if ($(hash).length) {
                event.preventDefault();
                $("html, body").animate({
                    scrollTop: $(hash).offset().top
                    }, 800, function(){
                        window.location.hash = hash;
                    }
                );
            }
        }
    });
});