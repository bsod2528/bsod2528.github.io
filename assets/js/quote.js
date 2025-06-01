document.addEventListener("DOMContentLoaded", function () {
    const quotes = [
        "Games the game - Harry Lewis (W2S)",
    ];

    const randomQuote = quotes[Math.floor(Math.random() * quotes.length)];

    const box = document.querySelector(".box-2");
    if (box) {
        const quoteEl = document.createElement("p");
        quoteEl.textContent = randomQuote;
        quoteEl.className = "quote-text";
        box.appendChild(quoteEl);
    }
});