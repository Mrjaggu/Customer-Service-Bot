#!/bin/bash
rasa run --enable-api -m models --cors "*"

rasa run actions
