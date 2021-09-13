<h1> <img style='height: 75px;' src='https://codemelted.dev/website-nav/images/me.jpg' /> Mark Shaffer (MSCS) <a href="mailto:mark.shaffer@codemelted.com"><img src='https://codemelted.dev/website-nav/images/icons8-envelope-40.png' /></a> </h1>

Full stack software engineer specializing in cross-platform application development. Development experiences include working with communication wide area network (WAN) architectures, communication with external devices via network and serial comm, desktop applications with cross platform UI/UX requirements, and dedicated custom server services.  With this experience also comes the ability to fully document the software lifecycle from requirements / design, test plans, test cases, and end user documentation. 

<h1> Table of Contents </h1>

- [GITHUB WORK](#github-work)
- [INDUSTRY EXPERIENCE](#industry-experience)
  - [Technologies](#technologies)
  - [Projects](#projects)
  - [Awards](#awards)
- [EDUCATION](#education)
  - [College](#college)
  - [Formal Training](#formal-training)

# GITHUB WORK

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=CodeMelted&repo=codemelted.dev&theme=dracula)](https://github.com/CodeMelted/codemelted.dev)

![Top Langs](https://github-readme-stats.vercel.app/api/top-langs/?username=CodeMelted&layout=compact&theme=dracula&hide=HTML,CSS)  

Many thanks to [Anurag Hazra](https://github.com/anuraghazra/github-readme-stats).  He is the creator of the API that produces the cards.

# INDUSTRY EXPERIENCE

## Technologies

**Applications:** Android Studio, Github Desktop, MS Project, NetBeans, Notepad++, Projucer, QT Creator, Visual Studio Code, Visual Studio 2013 / 2015, XCode

**Build Tools:** Ant, CMake, Closure Compiler,  javac, Jenkins, Make, MS Build

**C/C++:** DLL libraries, STL threads, p threads, XML, TCP, UDP, SSL, databases, file I/O, X11 Motif, vxWorks real-time processing, Qt framework / QML, JUCE, Boost, CppTest, Google Test / MOC, QTest

**C#:** ASP .Net, Win Forms, multi-threaded

**Databases:** Apache Derby, MS Access, MS SQL Server 2008, MySQL, SQLite

**Documentation:** Doxygen, Javadoc, jsdoc, markdown, pandoc

**IBM Mainframes:** Assembler 370, Fortran 77, JCL

**Java SE:** Swing, JDBC, RMI, TCP, UDP, SSL, multi-threaded, JNI, JNDI, XML, serialization, file I/O, scripting via Rhino / Nashorn / Jython, JUnit

**Operating Systems:** AIX, Android, Chrome OS, Linux, Solaris 9 / 10, Mac OS, vxWorks, Windows NT 4 / 2000 / XP / Vista / 7 / 8 / 10

**Python:** Threading, QT5, GPS, Raspberry Pi Camera Module, Disk Manipulation, Flask, Simple HTTP Server

**Requirements & Design:** DOORs, Lucid Chart, Magic Draw, MS Visio, PlantUML

**Shell Scripting:** Awk, CMD, bash, Jscript, PowerShell, SQL, VBA, VBScript

**Source Control:** ClearCase, Mercurial, GIT, GitHub, MS Team Foundation Server, PVCS

**Testing:** Bullseye, CppUnit, Google Test / MOC, Mocha / Chai, QTest, Junit, writing simulators, verification & validation with functional / system level test development, writing test plans / reports, requirements verification matrix tracking, performance validation, interface validation

**Web Technologies:** HTML5, CSS3, JavaScript ES5 / ES6, Web Browser APIs Geolocation / local and session storage / web workers / web socket / AJAX, ExtJS framework, jQuery framework, PHP 

## Projects

**Docker Server Suite:** Performed systems engineering for a project.  The system is a suite of Docker container images (some custom builds, some from Docker repository) joined with a Python flask gateway application.  Users can completely access services via a custom web application.  Part of the systems engineering was a refactor of the installation process to allow for upgrading aspects of the system instead of a full installation.  Other parts include identifying user stories to bring this to a deliverable project hosting within the cloud or on physical hardware along with establishing the existing design and creating a coding standard for scripts.  Scripts to perform other tasks were written within Python and bash with a set coding standard for those.

**User Database Migration:** An air conditioner company was migrating their cloud-based system from AWS to GCP solution.  Part of this migration was the moving user / device data from Xively database to a Firebase Cloud Firestore.  A TypeScript utility was written to make API calls from the old AWS endpoints to transfer the data into the Firebase Cloud Firestore system.

**Django Endpoints and Test API Framework:** Part 2 to the Django Demo Capability is the establishment of API endpoints and the ability to validate those endpoints for non-degradation / performance testing.  The API endpoints were developed in Django Python interfacing with business logic working with a Postgres database.  API documentation was auto generated via swagger.io.  Finally, all documentation hosting, Django admin pages, and the demo application completely share a custom look and feel for a light and dark theme.  The Test API Framework was developed in Python 3 CLI app utilizing the requests and tabulate python modules.  The framework was compiled into an executable to work on Mac OS/ Windows OS.  The framework would utilize JSON test input files to validate expected returns from API calls along with measuring how long the calls took.  This was summarized in a metrics report.  All of this was to support the Django Endpoints into other systems the client was supporting.

**Django Demo Capability:** Upgraded a Django web application hosted in the Google Cloud Platform to have a dynamic demo capability for on-stage expos.  This demo required a facilitator on stage to utilize the web application to demonstrate the web applications features while supporting ~500 concurrently connected audience members.  This required an architecture upgrade for the Django to utilize the ASGI protocol via the Channels framework.  Once upgraded, a web socket protocol was utilized to facilitate the demo capabilities.  The web application supported mobile and desktop views, D3 chart rendering, accessing a mobile device camera from the web application, and OCR capabilties via the Google Vision API.

**Jeep Pi Explorer v1:** This is a Raspberry Pi 3 Camera Module project that provides the ability to capture photos from within a SUV.  The project has three primary goals.  The first is the capture of the photos, tagging them with GPS and time information.  The second goal is the management of those photos by being able view, delete, share, and move the photos from the SD card to other storage means.  The third goal is access to entertainment items to enjoy while camping in those remote areas. The system is developed using Python 2/3 technologies to access aspects of the Raspberry Pi system with an embedded web app to support the camera capture features.  The "share" feature of the photos is a Phase 2 item of the Extreme Explorer area.

**QT Framework Evaluation:** Performed a technical evaluation of the QT C++ framework for building desktop and mobile applications to provide a singular code base and user interface experience.  Wrote a procedure with resource links to setup a QMake project and successfully build an application for those operating systems.

**JUCE Framework Evaluation:** Performed a technical evaluation of the JUCE C++ framework for building audio applications.  The technical evaluation was to determine how easily one could build user interfaces to target mobile and desktop applications.  Identified available trainings and built several custom components utilizing the framework.  Documented the findings in a technical report that will allow other software developers to train and identify the strengths & weaknesses of the JUCE framework as compared to other frameworks.

**Audio Renderer:** Written in C++ 17 utilizing the Qt Framework for the user interface.  Ran on the Windows 7/10 and Mac OS operating systems.  Worked on building a custom user interface utilizing Qt widgets.  Widgets were highly customized for the clients look & feel requirements.  Utilized the Qt Designer Plugin Architecture to allow the customized widgets to be dragged & dropped with the Qt Designer Tool.  Widget customization included overriding behaviors, custom paint events, and heavy emphasis on QSS.  Another side task with this client was the research into QML.  Created two prototypes utilizing QML as the frontend.  The first was a “pure” QML frontend providing a thin C++ communication layer to allow for interacting with the QML.  The second was providing integration of the custom widgets with QML but providing the same C++ communication mechanism as the widgets

**Unmanned Aeria Vehicles (UAV):** Written in C/C++ with QT framework support.  Ran on Windows and Linux OS.  Supported Army operators in the field for surveillance and search missions. Worked on modifications to the ACE video payload module for uploading external data files from a Windows laptop.  Worked on prototype for emergency transponder broadcasting when loss of communication occurred

**Electronic Checklist Aide (ECA):** Worked on a team that built an automated electronic checklist aide program for the army operator for flight prep, operations, and landing of the UAV. This project consisted of a generator program for the checklist stored as XML and used by the checklist program. The checklist program utilized multiple sockets to interface with other programs to determine if they successfully completed steps as part of the UAV operations. A library was utilized by both applications for the data model, threading, and logging facilities. 100% functional / conditional test coverage accomplished with QTest and Bullseye

**British Tank System:** Work on a modernization effort for British tank system as part of the communications team. Five development teams make up the overall effort consisting of 180 modularized DLL projects at roughly 500,000 SLOC. The technologies utilized C++ 11 modernization wrapping legacy COM objects performing the legacy mission. Subsystems developed included: 1) Message rules routing for email messages that were communicated via the radio network, 2) Chat templates facility utilizing QT and XML to support chat operations, 3) Redesigned the Chat Gateway Stack responsible for sending/receiving messages via XMPP on a radio NET, and 4) Redesigned the MILCAN BUS to communicate for GIS information about the tank’s position and speed

**Collision Avoidance and Broadcast System:** Java SE8 Raspberry PI2 embedded application for emergency responders that processed, displayed, and communicated Graphical Information System (GIS) data over a radio mesh network to other devices.  Also included was the documentation of the procedures to load, build, and flash the programs and GIS data

**Profit Hauler:** Android application re-vamp for tracking trucker receipts for end-of-year tax reporting.  The revamp included newly skinned application frontend to be in line with the website and iOS application look & feel.  Needed to access the GPS and Camera APIs.  Also needed to handle new Android permissions API

**Digital Signage:** Internal product based on ASP .NET web server, C# Win Form application for management, and a web based front-end for displaying content on flash drives on Windows dedicated screens
Human Resources | ExtJS web site with a Java EE / MySQL backend for managing employees time off and vacation based on time-of-service with the company

**ISEF:** ExtJS web-based application for modeling software requirements in the vein of Rational Rose Use Case Management

**Global Windows Provisioning:** Aided the System Administration team in developing a series of PowerShell scripts forming a framework for installing software (COTS, custom, security updates) to support the Defense Information System Agency (DISA) hardening of multiple Windows OS platforms worldwide. Skills from this endeavor provided the capability for the Software Engineering team to develop installation packages from custom application and build simulation/test capabilities utilizing the .NET platform

**Advanced Storage Unit (ASU) Upgrade:** The MGS is an older mobile system that utilized 8MM tapes to load the software system.  The tape drives were dying, and the government procured the Advanced Storage Unit (ASU) to replace the tape drives. Led a team of five Software Engineers, one Systems Engineer, one HW/Network Engineer, and two Test Engineers to deploy the ASU. This required an update all site procedures from utilizing 8MM tapes to utilizing the ASU. Use case analysis of both operations/maintenance procedures yielded three new Java applications and the modification of 1970s mainframe applications to communicate via TCP/IP. This was to allow for the development/deployment of a Java virtual tape library server within a WAN accessible by the modified mainframe programs and a dedicated Java client. The final Java program was a dedicated application for transferring data to and from the ASU/virtual tape library

**MWDCS Application Suite:** Developed a new application for addressing multiple usability and performance issues with four originally developed Java applications on a Windows platform. this required the development of an application bridge to each of the four original Java applications (i.e. turn them into libraries) to maximize code reuse and consolidate the application into a single application view

**MGT Communications Application:** Was the creation of a new Java application for the MGS to handle multiple satellite communication interfaces and an Ethernet interface for receiving and transmitting messages. This application required a searchable database and a service to run so the operator could receive data while not being logged into the platform. This effort was a team of three Software Engineers and two Test Engineers with a turnaround time of 6 months and ~18,000 SLOC

**GCNM Operator Display Application:** Led a team of three Software Engineers to build a command and status application for server applications within a WAN. This Java application communicated with the server applications over SSL providing user credentials when issuing commands and displaying status of all the server applications. In total, there was four to six active servers within the WAN. The server changes were in C++ requiring the use of OpenSSL, PAM, and implementing SNMP v3

**GCNM Toolkit Application:** Led a team of five Software Engineers to implement the GCNM Toolkit application. This application was an offline application providing management and testing of server applications within a WAN. This was a collection of 7 tools that provide log management, server configuration, scenario editing and simulation testing. The other set of tools provided management of the applications many features

**GCNM Common Services Module:** Developed a reusable library for the Java applications that wrap many Java APIs into a reusable set of classes between the applications. Some of the features include SSL, Socket transactions (TCP server, client, and UDP), threading, database transactions, XML parsing, and RMI

**Eglin Space Surveillance Radar Modernization:** Systems Analyst / Software Integrator responsible for the collection/analysis of software development metrics and software subsystem integration/testing within a real-time Java Runtime Environment (JRE). Accomplishment of these tasks included the development of MS Access 2003 database applications, development of test utilities in Java/Unix Shell scripts, and the development of internal operating procedures

**Ground Communication Network Modernization (GCNM):** System Test Lead responsible for the development of a program test plan, test execution plans, reports for major test phases, and developing the regression test cases against the system requirements (218 software, hardware, and network). Accomplishment of these tasks included the development of MS Access 2003 database applications, development of test tools in Unix Shell scripts/awk scripts, utilization of test tools (Wireshark, simulators, etc.), and the utilization of software / network models

**Large Processing Station (LPS) / Mobile Ground System (MGS) Missile Warning Systems:** Programmer Analyst responsible for the analysis/implementation/testing of problem reports. Accomplishment of these tasks included the development of requirements/design models of the problems, implementation of the code changes, updates to user documentation, and development of unit/system test procedures. Languages utilized were Fortran 77, Assembler 370, JCL, C, and textual dataset updates

## Awards

**Special Recognition Award (April 2014):** In recognition and appreciation of your exceptional performance in developing and delivering the GCNM 12V-1/14-1 version

**Special Recognition Award (November 2013):** In recognition and appreciation of your outstanding performance, dedication, and teamwork in support of the Red Side installation of MDCB at the IMCB. You effectively responded to technical challenges and customer requests while simultaneously executing S2E2 responsibilities and support sustainment KPEs

**Special Recognition Award (November 2013):** You continue to exceed expectations, consistently demonstrating exceptional performance, attitude, and commitment. Your contributions are vitally important to our organization. Well done

**SPOT Award (September 2011):** Leading the ASU effort in MGS 11-2

**SPOT Award (August 2010):** Restoring the legacy DSP, SIM, and LDI to test, verify, and tune A2D2

**SPOT Award (April 2009):** For the GSM emergency software delivery at site

**Special Recognition Award (October 2008):** This individual SRA recognizes the exemplary efforts of Mark Shaffer, lead software developer, who enabled the successful and timely delivery of Mobile Ground System (MGS) 06V-1/08-1. This version required over 18,000 new lines of code to implement the ability to receive the mission messages by interfacing with the Ground Communication Network Modernization (GCNM) system and to be a source of message content required to support he Air Force mission. Mark Shaffer led this version from initial software development and testing, working overtime and weekends. as a result of hours of coordination of multiple Air Force ITW/AA integration and test process with success. Mark delivered this large software delivery on the tight six month schedule with the complete confidence of the customer. The operational Air Force customer was pleased with their new capability and associated training, and has implemented Version 08-1 into their normal operations. This award is recognition of Mark's technical and professional abilities to "delight" our customer and demonstrate the LM dedication and commitment to our nation

**SBIRS New Ways of Doing Business Team Award (March 2008):** For SBIRS Centralized Integration

**SPOT Award (September 2007):** Mark Shaffer, Software Engineer for the O&M Sustainment Team, is being recognized by the GCNM Lead for outstanding support, above and beyond his normal work effort. Mark came to the contract when the GCNM Team desperately needed help with getting the software development completed in preparation for the SGC 06V-1/06-1 upgrade version. Mark took the initial design/requirements and provided the completion of the Software Unit Development Folder (code, unit test, and documentation) on a tight schedule. Mark followed up with his efforts by working with the Testers to resolve integration issues during the integration effort for the version effort. This award recognizes his outstanding software engineering performance in support of the SBIRS O&M Sustainment program

**Peer Recognition Award (September 2003):** Third quarter peer recognition award

**Peer Recognition Award (June 2002):** Second quarter peer recognition award

**Peer Recognition Award (September 2001):** In appreciation of your contributions toward achieving our 3rd consecutive 100% award fee evaluation

**Peer Recognition Award (June 2001):** Second quarter peer recognition award

# EDUCATION

## College

- MS Computer Science (SW Engineering)
- BS Computer Information Systems Management
- AAS Computer Programming

## Formal Training

- AFSPACE USSTRATCOM NORAD SCTP Overview Course
- Space Control Missile Defense-Missile Warning Test Management
- Supervisor Certification ITT Industries
- Object-Oriented Analysis and Design Using UML
- Combined Test Force CC ICS2 Test Manager Course for Cheyenne Mountain Complex
- Network Administration for the Solaris 9 OS
- Applied Computer Technologies
