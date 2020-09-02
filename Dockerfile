FROM ubuntu:18.04
#RUN apt-get update -y
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip 
COPY . /app
WORKDIR /app
RUN pip install spacy
RUN python3 -m spacy download en
#RUN python3 -m spacy link en_core_web_md en
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
RUN chmod +x start_services.sh
#CMD start_services.sh
#CMD $(echo “rasa run -m models --credentials credentials.yml --enable-api --log-file out.log --endpoints endpoints.yml” | sed ‘s/=//’)
#CMD $(echo "rasa run actions -p $PORT --debug" | sed 's/=//')
CMD ["start_services.sh"]

