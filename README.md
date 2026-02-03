<center><img src="https://codemelted.com/assets/images/logo-codemelted-rs.png" height="150px" /></center>

"Write once, run anywhere (WORA)" was the famous slogan made by Sun Microsystems in 1995.  At the time, this technology allowed for easy full stack engineering allowing you to target dedicated workstations and on premise servers. So long as a Java Runtime Environment existed, you could run your code. Java was unable to keep to their slogan as web browsers became more advanced, mobile devices became ubiquitous, and companies no longer required dedicated servers.

**Table of Contents**

- [Projects](#projects)
  - [Consumable Crate](#consumable-crate)
  - [Command Line Interface (CLI)](#command-line-interface-cli)
- [Support](#support)

# Projects

<img style="width: 400px; padding-right: 25px;" src="https://codemelted.com/developer/mdbook/models/use-case-model.drawio.png" align="left" />

The **[codemelted.rs](https://rs.codemelted.com)** project aims to deliver a full stack Swiss Army Knife module for software engineers to easily build software solutions. Utilizing the Rust programming language, the module serves as a backbone to engineer solutions for multiple build targets. This is accomplished by implementing 14 domain specific use cases for the most common problems software engineers face.

<br /><br /><br /><br />

## Consumable Crate

The [codemelted crate](https://crates.io/crates/codemelted) provides the ability to write native applications utilizing the 14 domain use cases. This can be from as low-level as a Raspberry Pi to dedicated server services. With the code written in Rust, you gets the speed of C but without the memory safety headaches.

**Application Development**

The table belows explains the types of apps you can build when consuming the `codemelted` crate.

Target  |Description
--------|-----------
CLI     | Utilize the `console` use case and build a basic interactive terminal application for your users.
GUI     | Utilize the `codemelted.js` rust binding along with the [TAURI](https://v2.tauri.app/) framework and bring a HTML / CSS desktop GUI application powered in rust to your target operating system.
SERVICE | Utilize the `codemelted.rs` module via the crate to build a operating system service that runs in the background to support a different application across a network or on a host computer.
TUI     | With the assistance of the `codemelted-cli` pwsh Core module, you can quickly build TUI application within a pwsh terminal environment. Or simply utilize the `codemelted.rs` module via the crate and utilize a number of Rust based TUI frameworks.
WEB     | With the `codemelted.rs` module, the `codemelted.js` rust binding, and the power of WASM, easily build rust based web applications to run via a web browser or within a supported V8 JavaScript runtime engine.

## Command Line Interface (CLI)

<center><img style="padding-right: 25px; height: 250px" src="https://codemelted.com/developer/mdbook/models/cli-model.drawio.png" align="left" /></center>

The [codemelted Crate](https://rs.codemelted.com) will also provide an installable `codemelted` native CLI command. This command will help in building terminal scripted solutions within a given terminal scripting environment.

In addition, a wrapper for the `codemelted` native command will come in the form of the `codemelted-cli` command. This will be a PowerShell Core module that wraps the `codemelted` native command but builds upon it utilizing the .NET core environment. This aids in building DevOps / cloud solutions regardless of the scripting terminal environment.

# Support

This project does not want to utilize ads on the different websites. To that end, any support for this project is appreciated. We are just getting started so follow on the different socials on the website for progress.

- <a href="https://www.buymeacoffee.com/codemelted"><img src="https://codemelted.com/assets/images/icon-buy-me-a-coffee.png" height="35px" /> Buy Me A Coffee</a>: Direct support for the CodeMelted content and other services not directly related to the **codemelted.rs** project.
- <a href="https://github.com/sponsors/CodeMelted"><img src="https://codemelted.com/assets/images/icon-github.png" height="35px" /> GitHub Sponsorship</a>: Direct support for the **codemelted.rs** project either through a one time donation or a monthly subscription.
- <a href="https://codemelted.com"><img src="https://codemelted.com/assets/favicon/apple-touch-icon.png" height="35px" /> Website</a>: My main website where I will blog about this project along with other interest and utilize this crate to build out the main website design goals.
