#!/bin/bash

curl -H "Content-Type: application/json" --data '{"build": true}' -X POST "$1"
