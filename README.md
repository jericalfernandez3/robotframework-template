# robotframework-template Repository
This is a robotframework template for automation that can be used as baseline.

## Getting Started
These instruction will get you a copy of robotframework-template automation script project on your local machine for development testing purposes.

### Prerequisites
This project currently uses the following tools/libraries.
- __[Python 3.9](https://www.python.org/downloads/release/python-3914/)__
- __[Google Chrome](https://support.google.com/chrome/answer/95346?hl=en&co=GENIE.Platform%3DDesktop)__
- __[Chromedriver](https://chromedriver.chromium.org/downloads)__
- __[Visual Studio Code](https://code.visualstudio.com/download)__
- __[Windows Subsystem Linux (WSL)](https://ubuntu.com/desktop/wsl)__

### Built with
- __[Robot Framework](https://robotframework.org/)__
- __[Python 3.9](https://www.python.org/downloads/release/python-3914/)__

### Installing
Clone the repository
```
$ git clone https://github.com/jericalfernandez3/robotframework-template.git
```
Create virtual environment
```
$ pythom -m venv .venv
```
Activate virtual environment
```
$ source .venv/bin/activate
```
or
```
$ .\.venv\bin\activate
```
Install necesarry libraries
```
$ pip install -r frontend_tests/requirements.txt
```
Make sure chromedriver is placed inside your python/Scripts folder (this setup is only applicable if you are trying to setup in your local __Windows__ machine)
```
$ C:\Program Files\Python39\Scripts
```
or
```
C:\Users\<User>\AppData\Local\Programs\Python\Python39\Scripts
```