#!/bin/bash

aglio -i /blueprint/*.md -s -h 0.0.0.0 -p 8888 &
drakov -f "/blueprint/*.md" -p 8080
