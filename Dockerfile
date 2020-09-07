FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip 
COPY . /app
WORKDIR /app
RUN pip install spacy
RUN python3 -m spacy download en
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
RUN chmod +x start_services.sh
CMD ["start_services.sh"]

