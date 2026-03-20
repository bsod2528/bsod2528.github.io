(function () {
    function applyTheme(theme) {
        document.documentElement.setAttribute("data-theme", theme);
        var btn = document.getElementById("theme-toggle");
        if (btn) btn.textContent = theme === "light" ? "🌙" : "☀️";
    }

    var btn = document.getElementById("theme-toggle");
    var saved = localStorage.getItem("bsod-theme");
    var system = window.matchMedia("(prefers-color-scheme: light)").matches ? "light" : "dark";
    applyTheme(saved || system);

    btn.addEventListener("click", function () {
        var current = document.documentElement.getAttribute("data-theme") || "dark";
        var next = current === "dark" ? "light" : "dark";
        localStorage.setItem("bsod-theme", next);
        applyTheme(next);
    });
})();
