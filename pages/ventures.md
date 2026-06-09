---
layout: default
title: Ventures
toc: false
---
# Ventures

<!--
    Colours are taken from: https://github.com/ozh/github-colors/blob/master/colors.json
-->

<div class="v-filter">
    <button class="v-filter-btn active" data-filter="all">[all]</button>
    <button class="v-filter-btn" data-filter="tech">[tech]</button>
    <button class="v-filter-btn" data-filter="music">[music]</button>
</div>

<div class="venture-container" data-category="music">
    <h2 class="v-title">unrequited love - ep</h2>
    <a href="/pages/projects/unrequited-love.html" class="obsidian-embed">
        <span class="oe-title">📄 unrequited-love</span>
        <img src="/assets/images/music/unrequited_love.png" class="oe-preview" alt="unrequited love cover">
    </a>
    <p class="v-description">My debut ep as a musician!</p>
</div>

{:.space}

<div class="venture-container" data-category="music">
    <h2 class="v-title">you - single</h2>
    <a href="/pages/projects/you.html" class="obsidian-embed">
        <span class="oe-title">📄 you-single</span>
        <img src="/assets/images/music/you_cover.png" class="oe-preview" alt="unrequited love cover">
    </a>
    <p class="v-description">My debut single as a musician!</p>
</div>

{:.space}

<div class="venture-container" data-category="tech">
    <h2 class="v-title">VR16 CPU</h2>
    <p class="v-description">A simple 16-bit RISC based CPU!</p>
    <div class="v-language">
        <span>Verilog (46.9%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 46.9%; background-color: #b2b7f8;"></div>
        </div>
    </div>
    <div class="v-language">
        <span>Python (41.4)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 43.2%; background-color: #3572A5"></div>
        </div>
    </div>
    <div class="v-language">
        <span>SystemVerilog (10.6)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 9.5%; background-color: #DAE1C2"></div>
        </div>
    </div>
    <div class="v-language">
        <span>Shell (1.1%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 0.4%; background-color: #89e051;"></div>
        </div>
    </div>
    <a href="https://github.com/bsod2528/cpu" class="v-link">Source Code</a>
    <a href="/pages/projects/vr16.html" class="v-link">Read More</a>
</div>

{:.space}

<div class="venture-container" data-category="tech">
    <h2 class="v-title">CORDIC Accelerator</h2>
    <p class="v-description">A simple peripheral for the Vyommedha SBC.</p>
    <div class="v-language">
        <span>Verilog (98.2%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 98.2%; background-color: #b2b7f8;"></div>
        </div>
    </div>
    <div class="v-language">
        <span>Shell (1.8%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 1.8%; background-color: #89e051;"></div>
        </div>
    </div>
    <a href="https://github.com/ApoorvaGithubAmargol/Cordic_Peripheral_SBC" class="v-link">Source Code</a>
    <a href="/pages/projects/cordic.html" class="v-link">Read More</a>
</div>

{:.space}

<div class="venture-container" data-category="tech">
    <h2 class="v-title">Geralt</h2>
    <p class="v-description">
        Discord bot written in <a href="https://github.com/Rapptz/discord.py">discord.py</a>!
    </p>
    <div class="v-language">
        <span>Python (95%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 95%; background-color: #3572A5"></div>
        </div>
    </div>
    <div class="v-language">
        <span>PostgreSQL (5%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 5%; background-color: #e38c00"></div>
        </div>
    </div>
    <a href="https://github.com/bsod2528/Geralt" class="v-link">Source Code</a>
    <a href="/pages/projects/geralt.html" class="v-link">Read More</a>
</div>

{:.space}

<div class="venture-container" data-category="tech">
    <h2 class="v-title">Beach Bot</h2>
    <p class="v-description">
        Another discord bot written in <a href="https://github.com/Rapptz/discord.py">discord.py</a>, yet this one is a guide.
    </p>
    <div class="v-language">
        <span>Python (100%)</span>
        <div class="v-progress-wrapper">
            <div class="v-progress-bar" style="--bar-width: 100%; background-color: #3572A5;"></div>
        </div>
    </div>
    <a href="https://github.com/bsod2528/Beach-Bot" class="v-link">Source Code</a>
    <a href="/pages/projects/beach-bot.html" class="v-link">Read More</a>
</div>

<script src="/assets/js/project_toggler.js"></script>
<script>initVentureFilter();</script>
