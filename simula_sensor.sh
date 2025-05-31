#!/bin/bash

ORION_URL="http://localhost:80/orion/v2/entities/Sensor001/attrs"
FIWARE_SERVICE="meuservico"
FIWARE_SERVICEPATH="/sensores"

while true; do
  # Gera valores aleatórios em faixas realistas
  temperature=$(awk -v r=$RANDOM 'BEGIN {printf "%.1f", 15 + (10 * (r/32767))}')        # 15.0 ~ 25.0
  humidity=$(awk -v r=$RANDOM 'BEGIN {printf "%.1f", 40 + (60 * (r/32767))}')           # 40.0 ~ 100.0
  energyConsumption=$(awk -v r=$RANDOM 'BEGIN {printf "%.2f", 100 + (200 * (r/32767))}') # 100.00 ~ 300.00

  curl -s -X PATCH "$ORION_URL" \
    -H "Content-Type: application/json" \
    -H "Fiware-Service: $FIWARE_SERVICE" \
    -H "Fiware-ServicePath: $FIWARE_SERVICEPATH" \
    -d "{
      \"temperature\": { \"value\": $temperature, \"type\": \"Float\" },
      \"humidity\": { \"value\": $humidity, \"type\": \"Float\" },
      \"energyConsumption\": { \"value\": $energyConsumption, \"type\": \"Float\" }
    }"

  echo "Enviado: temp=$temperature, hum=$humidity, energy=$energyConsumption"
  sleep 10
done
