(function () {
    const saved = localStorage.getItem("bsod-theme");
    const system = window.matchMedia("(prefers-color-scheme: dark)").matches ? "light" : "dark";
    document.documentElement.setAttribute("data-theme", saved || system);
})();
