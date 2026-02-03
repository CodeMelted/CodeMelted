<center><img src="https://codemelted.com/assets/images/logo-codemelted-rs.png" height="150px" /></center>

"Write once, run anywhere (WORA)" was the famous slogan made by Sun Microsystems in 1995.  At the time, this technology allowed for easy full stack engineering allowing you to target dedicated workstations and on premise servers. So long as a Java Runtime Environment existed, you could run your code. Java was unable to keep to their slogan as web browsers became more advanced, mobile devices became ubiquitous, and companies no longer required dedicated servers.

**Table of Contents**

- [codemelted.rs Consumable Crate](#codemeltedrs-consumable-crate)
- [codemelted CLI](#codemelted-cli)
- [Support](#support)

# codemelted.rs Consumable Crate

<table>
<tr>
<td style="width: 325px;"><img src="https://codemelted.com/developer/mdbook/models/use-case-model.drawio.png" /></td>
<td>
The <code>codemelted.rs project</code> aims to deliver a full stack Swiss Army Knife module for software engineers to easily build software solutions. Utilizing the Rust programming language, the module serves as a backbone to engineer solutions for multiple build targets. This is accomplished by implementing 14 domain specific use cases for the most common problems software engineers face. This can be from as low-level as a Raspberry Pi to dedicated server services. With the code written in Rust, you gets the speed of C but without the memory safety headaches.
</td>
</tr>
</table>

**Application Development**

The table belows explains the types of apps you can build when consuming the `codemelted` crate.

Target  |Description
--------|-----------
CLI     | Utilize the `console` use case and build a basic interactive terminal application for your users.
GUI     | Utilize the `codemelted.js` rust binding along with the [TAURI](https://v2.tauri.app/) framework and bring a HTML / CSS desktop GUI application powered in rust to your target operating system.
SERVICE | Utilize the `codemelted.rs` module via the crate to build a operating system service that runs in the background to support a different application across a network or on a host computer.
TUI     | With the assistance of the `codemelted-cli` pwsh Core module, you can quickly build TUI application within a pwsh terminal environment. Or simply utilize the `codemelted.rs` module via the crate and utilize a number of Rust based TUI frameworks.
WEB     | With the `codemelted.rs` module, the `codemelted.js` rust binding, and the power of WASM, easily build rust based web applications to run via a web browser or within a supported V8 JavaScript runtime engine.

# codemelted CLI

<table>
<tr>
<td style="width: 285px;"><img src="https://codemelted.com/developer/mdbook/models/cli-model.drawio.png" /></td>
<td>
<ul>
<li>The CLI is the main interface for operating system terminals.</li>
<li>The <code>codemelted</code> command provides a native CLI command available on any operating system that supports a Rust compiler.</li>
<li>The <code>codemelted</code> command provides will provide common actions between operating systems along with specific toolchains associated with the <code>codemelted.rs</code> project.</li>
<li>The <code>codemelted-cli</code> pwsh Core module is a specialized set of CLI bindings building on top of the <code>codemelted</code> native command but providing the power of PowerShell command / scripting concepts.</li>
<li>Scripting utilizing the <code>codemelted</code> / <code>codemelted-cli</code> environment provide a powerful DevOps toolchain set of automation.</li>
</ul>
</td>
</tr>
</table>

# Support

This project does not want to utilize ads on the different websites. To that end, any support for this project is appreciated. We are just getting started so follow on the different socials on the website for progress.

- <a href="https://www.buymeacoffee.com/codemelted"><img src="https://codemelted.com/assets/images/icon-buy-me-a-coffee.png" height="35px" /> Buy Me A Coffee</a>: Direct support for the CodeMelted content and other services not directly related to the **codemelted.rs** project.
- <a href="https://github.com/sponsors/CodeMelted"><img src="https://codemelted.com/assets/images/icon-github.png" height="35px" /> GitHub Sponsorship</a>: Direct support for the **codemelted.rs** project either through a one time donation or a monthly subscription.
- <a href="https://codemelted.com"><img src="https://codemelted.com/assets/favicon/apple-touch-icon.png" height="35px" /> Website</a>: My main website where I will blog about this project along with other interest and utilize this crate to build out the main website design goals.
