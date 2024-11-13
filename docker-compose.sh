#!/bin/bash

trap sigint SIGINT
function sigint() {
    echo
    echo "got SIGINT"
    echo
}

trap sigint SIGTERM
function sigterm() {
    echo
    echo "got SIGTERM"
    echo
}


docker compose -f compose.yaml up
