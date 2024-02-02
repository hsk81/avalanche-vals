#!/usr/bin/env bash

##
## get validators with exports (from c-chain)
##

while read -r VALIDATOR; do
    UTXO=$(avalanche-cli platform get-utxos \
        -@"$VALIDATOR" --source-chain=C -Y \
        | jq -r '.result.endIndex.utxo') ;
    echo "$VALIDATOR $UTXO" ;
done | grep -v "11111111111111111111111111111111LpoYY" ;
