# Robot Framework, page object pattern and Selenium Library project 
It is a final postgraduate study project, which is using Robot Framework and Selenium
to test http://automationpractice.com" website.

## Prerequisites
- Chrome
- chromedriver
- python3
- Robot Framework
- Selenium Library
- Robot Framework-sleniumlibrary 

## How to run
- Clone this repository
- Open README.md file
- Create virtual python environment
  ```bash
  #create virtual environment
  python3 -m venv .venv
  #acctivate virtual environment
  source .venv/bin/activate
  #finaly we add the necessary library's
  pip install -r requirements.txt
  ```
- install Chrome, and chromedriver (if needed)
  at this link you can find instructions how to install Chrome and Chromedriver https://makandracards.com/makandra/29465-install-chromedriver-on-linux
- go to the Test Folder and run main_test.robot
  ```bash
  cd RobotWebTest/TestFolder
  robot main_test.robot
  ```
## What the test do?
The test will open Chrome browser and http://automationpractice.com website.
Next will perform tests below:
1. Automate User Registration.
2. Error messages for mandatory fields.
3. Login negative path (invalid e-mail)
4. Buy Product end-to-end test.

The tests should all pass. 
