#!/bin/bash

declare -A capitals

capitals[India]="New Delhi"
capitals[Japan]="Tokyo"
capitals[France]="Paris"

echo "Capitals of Japan : ${capitals[Japan]}"

for country in "${!capitals[@]}"; do
    echo "Capitals of $country : ${capitals[$country]}"
done