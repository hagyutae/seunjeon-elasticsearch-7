#!/bin/bash

# zip analysis-seunjeon-7.16.3.zip analysis-seunjeon-7.16.3.jar plugin-descriptor.properties

docker build . -t elasticsearch-seunjeon

docker run \
    -p 9200:9200 \
    -e "discovery.type=single-node" \
    elasticsearch-seunjeon

# curl -XGET "http://localhost:9200/_cat/plugins?v"

# curl -XPOST "http://localhost:9200/_analyze" -H 'Content-Type: application/json' -d '{
# "text": "한글분석테스트",
# "tokenizer": "seunjeon_tokenizer"
# }' | jq
