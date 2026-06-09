function initVentureFilter() {
    const btns = document.querySelectorAll(".v-filter-btn");
    const cards = document.querySelectorAll(
        ".venture-container[data-category]",
    );

    btns.forEach((btn) => {
        btn.addEventListener("click", () => {
            btns.forEach((b) => b.classList.remove("active"));
            btn.classList.add("active");
            const filter = btn.dataset.filter;

            cards.forEach((card) => {
                card.hidden =
                    filter !== "all" && card.dataset.category !== filter;
            });
        });
    });
}
