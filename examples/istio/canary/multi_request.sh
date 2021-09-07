while true; do
    curl --request GET -sL \
         --url 'http://localhost/' | grep title
done