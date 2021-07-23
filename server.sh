
if [ -z "$PORT"]
then
  PORT=5055
fi

rasa interactive -vv --endpoints endpoints.yml   
rasa run -vv --endpoints endpoints actions
