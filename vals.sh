#!/usr/bin/env bash

##
## get validators p-addresses sorted and unique
##

avalanche-cli platform get-current-validators -Y \
    | jq -c '.result.validators' \
    | jq -c 'map(.rewardOwner.addresses|.[0])' \
    | jq -c 'sort|unique|.[]' | jq -r ;
