/**
 * @file Provides a javascript module to skin github pages after they are
 *  rendered to provide a consistent navigation look.
 * @copyright 2022 Mark Shaffer. All Rights Reserved.
 * @license MIT
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */
const TITLE = "Melt the Code - Socials";
const HTML_TEMPLATE = `
<style>
    @import url("https://socials.codemelted.com/gh-page-nav/hacker-theme.css");

    /*
    ==========================
    Setup our scrollbar styles
    ==========================
    */
    /* width */
    ::-webkit-scrollbar {
        width: 5px;
        height: 3px;
    }
    /* Track */
    ::-webkit-scrollbar-track {
        background: darkslategray;
    }
    /* Handle */
    ::-webkit-scrollbar-thumb {
        background: #888;
    }
    /* Handle on hover */
    ::-webkit-scrollbar-thumb:hover {
        background: #555;
    }

    /*
    =========================================
    Header Setup
    =========================================
    */
    header {
        display: none;
    }
    body {
        margin-top: 60px;
        margin-bottom: 65px;
    }
    .cm-fixed-header {
        display: grid;
        grid-template-columns: 1fr auto auto;
        border: 1px solid black;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 55px;
        background-color: black;
        color: white;
        font-family: sans-serif;
        font-size: 12px;
        z-index: 2147483648;
    }
    .cm-fixed-header button {
        background-color: black;
        color: white;
        outline: none;
        border: none;
        cursor: pointer;
        font-size: 12px;
    }
    .cm-logo {
        display: block;
        height: 35px;
        padding 8 4 8 12
        margin-left: 15px;
    }
    .cm-logo:hover {
        cursor: pointer;
    }

    /* Footer */
    .cm-fixed-footer {
        padding-top: 5px;
        padding-bottom: 5px;
        z-index: 2147483648;
        display: grid;
        grid-template-columns: auto auto;
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        background-color: rgb(96, 125, 139);
        color: white;
        text-align: center;
        font-size: 12px;
    }

    .cm-fixed-footer button {
        background-color: rgb(96, 125, 139);
        color: white;
        outline: none;
        border: none;
        cursor: pointer;
        font-size: 12px;
    }

    .active, .cm-fixed-footer button:hover {
        font-weight: bold;
        color: black;
        background-color: rgb(189, 189, 189);
    }

    /* Handle nice printing on the page */
    @media print {
        .cm-fixed-header {
            display: none;
        }
        .cm-fixed-footer {
            display: none;
        }
        .cm-page-options {
            display: none;
        }
    }

    .cm-page-options {
        text-align: center;
        max-width: 50em;
        margin: auto;
        padding: 0.6250em;
    }
    .cm-page-options button {
        height: 30px;
        background-color: transparent;
        outline: none;
        border: none;
        cursor: pointer;
        font-size: 30px;
    }
    .cm-page-options img {
        height: 30px;
    }
</style>

<div id="divFixedHeader" class="cm-fixed-header">
    <img id="imgLogo" alt="logo" class="cm-logo" src="https://socials.codemelted.com/gh-page-nav/logos/logo-593x100.png" />
    <button id="btnWeb"><img style="height: 35px;" src="https://socials.codemelted.com/gh-page-nav/icons/icons8-website-48.png" /></button>
</div>

<div id="divFixedFooter" class="cm-fixed-footer">
    <button id="btnInstagram"><img style="height: 25px;" src="https://socials.codemelted.com/gh-page-nav/icons/instagram-icon.png" /><br />Instagram</button>
    <button id="btnTwitter"><img style="height: 25px;" src="https://socials.codemelted.com/gh-page-nav/icons/twitter-icon.png" /><br />Twitter</button>
</div>

<div class="cm-page-options">
    <button id="btnSupport"><img src="https://socials.codemelted.com/gh-page-nav/icons/bmc-button.png" /></button>
    <button id="btnPrint"><img src="https://socials.codemelted.com/gh-page-nav/icons/icons8-print-96.png" /></button>
</div>
`;

// Page navigation
const HOME_PAGE = "https://socials.codemelted.com";
const PORTAL_PAGE = "https://codemelted.com";
const URL_PAGE = {
    "Instagram" : `${HOME_PAGE}/instagram.html`,
    "Twitter"   : `${HOME_PAGE}/twitter.html`
};

/**
 * Determines if this is a mobile browser or not.
 * @returns true if mobile browser, false otherwise.
 */
function isMobile() {
    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.
        test(navigator.userAgent);
}

/**
 * Opens a popup and sends a signal via query string to signal whether it
 * was opened via the main portal or not.
 * @param {string} url The url to open.
 * @param {string} windowName The title of the popup
 * @param {number} w The width of the popup
 * @param {number} h The height of the popup
 * @param {string} action An action to carry out for the popup window.
 */
function popupWindow(url, windowName, w, h, action = undefined) {
    const top = (screen.height -  h) / 2;
    const left = (screen.width -  w) / 2;
    window.open(
        action !== undefined ? `${url}?action=${action}` : url,
        windowName,
        `toolbar=no, location=no, directories=no, status=no, ` +
        `menubar=no, scrollbars=no, resizable=yes, copyhistory=no, ` +
        `width=${w}, height=${h}, top=${top}, left=${left}`
    );
}

/**
 * Main entry point of this script
 */
function main() {
    setTimeout(() => {
        // Overlay our template
        document.title = TITLE;
        document.body.innerHTML = HTML_TEMPLATE + document.body.innerHTML;

        // Create the button actions to navigate to the appropriate page.
        // and set the if it is active or not depending on the page
        // navigated to.
        let href = window.location.href;
        for (const [key, value] of Object.entries(URL_PAGE)) {
            let btn = document.getElementById(`btn${key}`);

            // Assign the button action
            btn.addEventListener("click", () => {
                window.location.href = isEmbedded
                ? `${value}?isEmbedded=true`
                : value;
            });

            // Determine and set the active tab if found
            if (href.toLowerCase().includes(key.toLowerCase()) && btn.id !== "btnBlog") {
                btn.style.backgroundColor = "rgb(189, 189, 189)";
                btn.style.color = "black";
                btn.style.fontWeight = "bold";
                btn.classList.add("active");
            }
        }

        // Parse our URLSearchParams to determine how we are configuring this
        // view.
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const isEmbedded = urlParams.has("isEmbedded")
            ? urlParams.get("isEmbedded") === "true" ? true : false
            : window.location !== window.parent.location
                ? true
                : false;

        const popupAction = urlParams.has("action")
            ? urlParams.get("action")
            : undefined;

        // Setup whether our header / footer are displayed
        const isHeaderAndFooterShown = !isEmbedded && popupAction === undefined;
        if (!isHeaderAndFooterShown) {
            document.getElementById("divFixedHeader").style.display = "none";
            document.getElementById("divFixedFooter").style.display = "none";
            document.body.style.marginTop = "5px";
        }

        // Hide the actions if a popup action is occurring.
        if (popupAction !== undefined) {
            document.getElementsByClassName("cm-page-options")[0]
                .style.display = "none";
        }

        // Now assign our button actions, states from above will affect
        // how some of those action are performed.
        document.getElementById("imgLogo").addEventListener("click", () => {
            window.location.href = HOME_PAGE;
        });

        document.getElementById("btnWeb").addEventListener("click", () => {
            window.location.href = PORTAL_PAGE;
        });

        document.getElementById("btnSupport").addEventListener("click", () => {
            popupWindow("https://www.buymeacoffee.com/codemelted",
                "Buy Me a Coffee", 900, 600);
        });

        document.getElementById("btnPrint").addEventListener("click", () => {
            if (isEmbedded) {
                popupWindow(href.split("?")[0], TITLE, 800, 500, "print");
            } else {
                window.print();
            }
        });

        // Now determine if we are carrying out any popup actions
        setTimeout(() => {
            if (popupAction === "print") {
                window.print();
                if (!isMobile()) window.close();
            }
        }, 500);
    });
}
main();
