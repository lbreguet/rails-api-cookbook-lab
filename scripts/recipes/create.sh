#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recipes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content_Type: application/json" \
  --data '{
    "recipe": {
      "name": "'"${NAME}"'",
      "instruction": "'"${INSTRUCTION}"'"
    }
  }'

echo
