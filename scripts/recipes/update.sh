#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recipes/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content_Type: application/json" \
  --data '{
    "recipe": {
      "name": "'"${NAME}"'"
    }
  }'

echo
