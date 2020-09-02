# Start rasa server with nlu model

rasa run -m models --credentials credentials.yml --enable-api --log-file out.log --endpoints endpoints.yml

rasa run actions

python3 app.py