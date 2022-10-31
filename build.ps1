#!/usr/local/bin/pwsh
# =============================================================================
# MIT License
#
# Copyright (c) 2022 Mark Shaffer
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
# =============================================================================

[string]$HTML_TEMPLATE = @'
<!DOCTYPE html>
<html><head>
    <title>Melt the Code - GitHub</title>
    <meta charset="UTF-8">
    <meta name="author" content="Mark Shaffer">
    <meta name="description" content="Follows my personal GitHub work on https://socials.codemelted.com website.">
    <meta name="keywords" content="Melt the Code, codemelted, GitHub, software engineering">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="monetization" content="$ilp.uphold.com/q94gJPq8PFF4">
    <link rel="icon" type="image/x-icon" href="./favicon.png">
    <script src="./gh-page-nav/index.js" defer></script>
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</head><body><div class="content-main">

    <a class="github-button" href="https://github.com/codemelted" data-color-scheme="no-preference: dark; light: light; dark: dark;" data-size="large" data-show-count="true" aria-label="Follow @codemelted on GitHub">Follow @codemelted</a>

    CONTENT

</div></body></html>
'@

function build {
    # -------------------------------------------------------------------------
    # Constants:
    # -------------------------------------------------------------------------
    [string]$PROJ_NAME = "melt_the_code GitHub Generator"
    [string]$SCRIPT_PATH = $PSScriptRoot

    # Put out our statement
    Write-Host $PROJ_NAME
    Write-Host

    $mdFile = ConvertFrom-Markdown -Path "$SCRIPT_PATH/README.md"
    $htmlData = $HTML_TEMPLATE.Replace("CONTENT", $mdFile.Html)
    $HtmlData | Out-File -Encoding utf8 "$SCRIPT_PATH/index.html"

    Write-Host
    Write-Host "MESSAGE: $PROJ_NAME processing completed."
}
build