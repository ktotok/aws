aws configure set region us-east-2
aws dynamodb put-item \
    --table-name Bandcamp \
    --item '{"Artist": {"S": "Phil Collins"},"Album": {"S": "Face Value"} }'
aws dynamodb query --table-name Bandcamp \
--key-condition-expression "Artist=:artist and Album=:album" \
--expression-attribute-values '{":artist":{"S":"Phil Collins"}, ":album": {"S":"Face Value"}}'