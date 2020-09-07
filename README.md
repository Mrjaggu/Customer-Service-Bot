# Customer-Service-Bot
A customer service bot using Rasa framework.

## Screens
UI
![ScreenShot](./chatbot_1.png) !
Telegram
![ScreenShot](./chatbot_telegram1.jpg) ![ScreenShot](./chatbot_telegram2.jpg) ![ScreenShot](./chatbot_telegram3.jpg) !

<p float="left">
  <img src="./chatbot_telegram1.jpg" width="100" />
  <img src="./chatbot_telegram2.jpg" width="100" /> 
  <img src="./chatbot_telegram3.jpg" width="100" />
</p>


## Features
- User can search for the queries regarding network issues.
- Support for Interactive elements of Telegram.

## Rasa Components Used
- [Transformer Embedding Dialogue Policy (TEDP)](https://rasa.com/docs/rasa/core/policies/#ted-policy)
- [Retrieval Actions](https://rasa.com/docs/rasa/core/retrieval-actions/#retrieval-actions)
- [DIET Classifier](https://rasa.com/docs/rasa/nlu/components/#dietclassifier)

## Prerequisites
- Rasa Framework, check the details [here](https://rasa.com/docs/rasa/user-guide/installation/)

## How to use
- Clone the repo
- If you love working in virtual env then create one env
- Run pip install -r requirements.txt
- then open the terminal in the project directory and run the below commands
  - > rasa train
  - Once the bot has been trained, run the bot using the below commands
  - > rasa run actions
  - > rasa run -m models --enable-api --cors "*" --debug
  - > python app.py for Ui hosted with Flask api.
