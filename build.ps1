#!/usr/local/bin/pwsh
# =============================================================================
# MIT License
#
# © 2023 Mark Shaffer. All Rights Reserved.
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
<html lang="en"><head>
    <title>Melt the Code - GitHub</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Mark Shaffer">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="monetization" content="$ilp.uphold.com/q94gJPq8PFF4">
    <link rel="stylesheet" href="https://www.codemelted.com/css/hacker-theme.css">
    <style>
        .content-main {
            background-color: #1C2834;
        }
    </style>
</head><body><div class="content-main">
    <a class="github-button" href="https://github.com/codemelted" data-color-scheme="no-preference: dark; light: light; dark: dark;" data-size="large" data-show-count="true" aria-label="Follow @codemelted on GitHub">Follow @codemelted</a><br /><br />
    CONTENT
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</div></body></html>
'@

function build {
    # -------------------------------------------------------------------------
    # Constants:
    # -------------------------------------------------------------------------
    [string]$PROJ_NAME = "melt_the_code Socials Generator"
    [string]$SCRIPT_PATH = $PSScriptRoot

    # -------------------------------------------------------------------------
    # Support Functions
    # -------------------------------------------------------------------------
    function message([string]$msg) {
        Write-Host
        Write-Host "MESSAGE: $msg"
        Write-Host
    }

    # Setup the dist/socials directory
    message $PROJ_NAME
    message "Clear the dist directory"
    Remove-Item -Path "dist" -Force -Recurse -ErrorAction Ignore
    New-Item -Path "dist/socials" -ItemType Directory

    # Go parse the src/ to the dist/ directory
    Copy-Item -Path "src/podcast.html" -Destination "dist/socials"
    Copy-Item -Path "src/twitter.html" -Destination "dist/socials"
    Copy-Item -Path "src/youtube.html" -Destination "dist/socials"

    # Collect our photos information for the src/photography.html
    message "Now building photo album dataset"
    $data = @{}
    $photoPaths = Get-ChildItem -Path "src/photos" -Directory
    foreach ($photoPath in $photoPaths) {
        $photoFiles = Get-ChildItem -Path $photoPath.FullName
            | Foreach-Object {$_.Name}
        $key = "photos/" + $photoPath.Name
        $data[$key] = $photoFiles
    }
    $jsonData = $data | ConvertTo-Json
    [string] $photographyHtml = [IO.File]::ReadAllText("src/photography.html")
    $photographyHtml = $photographyHtml.Replace("const photoData = {};", "const photoData = $jsonData;")
    $photographyHtml | Out-File "dist/socials/photography.html" -Encoding utf8 -Force
    Copy-Item -Path "src/photos/" -Destination "dist/socials/" -Recurse -Force

    $mdFile = ConvertFrom-Markdown -Path "$SCRIPT_PATH/README.md"
    $htmlData = $HTML_TEMPLATE.Replace("CONTENT", $mdFile.Html)
    $HtmlData | Out-File -Encoding utf8 "dist/socials/github.html"

    message "$PROJ_NAME processing completed."
}
build