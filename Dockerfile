FROM rasa/rasa:latest-full

COPY app /app
COPY server.sh /app/server.sh

USER root

RUN pip3 install recognizers-text-suite
RUN pip3 install requests
RUN rasa train
ENTRYPOINT []
EXPOSE 5005
CMD $(echo "rasa run actions -p $PORT --debug" | sed 's/=//')
