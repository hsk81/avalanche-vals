#!/usr/bin/env bash

##
## get validators with exports (from x-chain)
##

while read -r VALIDATOR; do
    UTXO=$(avalanche-cli platform get-utxos \
        -@"$VALIDATOR" --source-chain=X -Y \
        | jq -r '.result.endIndex.utxo') ;
    echo "$VALIDATOR $UTXO" ;
done | grep -v "11111111111111111111111111111111LpoYY" ;
