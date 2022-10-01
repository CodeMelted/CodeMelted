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
    <meta name="description" content="Follows my personal GitHub work on https://codemelted.com website.">
    <meta name="keywords" content="Melt the Code, codemelted, GitHub, software engineering">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="monetization" content="$ilp.uphold.com/q94gJPq8PFF4">
    <link rel="icon" type="image/x-icon" href="../favicon.png">
    <link rel="stylesheet" href="../css/scrollbars.css">
    <link rel="stylesheet" href="../css/hacker-theme.css">
    <script src="../js/iframe_checker.js" defer></script>
    <script data-name="BMC-Widget" data-cfasync="false" src="https://cdnjs.buymeacoffee.com/1.0.0/widget.prod.min.js" data-id="CodeMelted" data-description="Support me on Buy me a coffee!" data-message="" data-color="#5F7FFF" data-position="Right" data-x_margin="10" data-y_margin="10"></script>
</head><body><div class="content-main">

    CONTENT

</div></body></html>
'@

function build {
    # -------------------------------------------------------------------------
    # Constants:
    # -------------------------------------------------------------------------
    [string]$PROJ_NAME = "melt_the_code GitHub Generator"
    [string]$SCRIPT_PATH = $PSScriptRoot
    [string]$DIST_PATH = $SCRIPT_PATH + "/_dist"

    # Put out our statement
    Write-Host $PROJ_NAME
    Write-Host

    # Remove and create our _dist directory
    Write-Host "MESSAGE: Now creating the _dist directory"
    Remove-Item -Path $DIST_PATH -Force -Recurse -ErrorAction SilentlyContinue
    New-Item -Path $DIST_PATH -ItemType Directory

    # Build out static README.html
    Write-Host "MESSAGE: Now transforming all src/md files to html"
    $mdFile = ConvertFrom-Markdown -Path "$SCRIPT_PATH/README.md"
    $htmlData = $HTML_TEMPLATE.Replace("CONTENT", $mdFile.Html)
    $HtmlData | Out-File -Encoding utf8 "$DIST_PATH/github.html"

    Write-Host
    Write-Host "MESSAGE: $PROJ_NAME processing completed."
}
build