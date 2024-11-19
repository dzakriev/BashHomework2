#!/bin/bash
sleep 5 &
sleep 10 &
sleep 15 &

jobs
fg %1
bg %2
wait
