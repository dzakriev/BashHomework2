#!/bin/bash
greet() {
    echo "Hello, $1"
}

sum() {
    echo $(($1 + $2))
}

greet "world"
result=$(sum 2 2)
echo "$result"
