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
### Setup testing environment in WSL
You can visit __[How to install Linux on Windows with WSL](https://learn.microsoft.com/en-us/windows/wsl/install)__ for more detailed steps.
#### Download and install Google Chrome
Use __wget__ command to download google chrome
```
$ wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
```
Get the current stable version and fix broken configs
```
$ sudo dpkg -i google-chrome-stable_current_amd64.deb || apt-get install --fix-broken -y
```
#### Download and install chromedriver
```
$ CHROMEDRIVER_URL=$(curl -s https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json | jq -r
'.channels.Stable.downloads.chromedriver[] | select(.platform=="linux64").url') && \

    wget "$CHROMEDRIVER_URL" -O chromedriver-linux64.zip && \

    unzip chromedriver-linux64.zip && \

    mv chromedriver-linux64/chromedriver /usr/local/bin/ && \

    rm -r chromedriver-linux64.zip chromedriver-linux64 && \

    chmod +x /usr/local/bin/chromedriver
```
Install dependency libraries for Chrome
```
$ apt-get install -y libglib2.0-0 libnss3 libgconf-2-4 libfontconfig1 libxi6
```
### Testing via Local Machine (Windows or WSL IDE terminal)
Once you are inside the repo, run these commands depending on the requirement.
#### Run specific testcase
```
$ robot -d Results frontend_tests/tests/<Testcase.robot>
```
#### Run testcases in parallel inside __tests__ folder using pabot library
```
$ python -m pabot.pabot --processes 6 --timestampoutputs --outputdir Results frontend_tests/tests/*.robot
```
### Author
- Jeric Al P. Fernandez - active Software Automation Tester