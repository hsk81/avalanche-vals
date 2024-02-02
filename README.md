## Avalanche Validators

A set of scripts to analyze Avalanche validators.

## Prerequisite(s)

```
Name            : jq
Version         : 1.7-1
Description     : Command-line JSON processor
URL             : https://stedolan.github.io/jq/
```

```
Name            : nodejs-lts-hydrogen
Version         : 18.18.2-2
Description     : Evented I/O for V8 javascript (LTS release: Hydrogen)
URL             : https://nodejs.org/
```

```
Name            : npm
Version         : 10.3.0-1
Description     : A package manager for JavaScript
URL             : https://www.npmjs.com/
```

```
avalanche-cli@2.2.0 | BSD-3-Clause | deps: none | versions: 89
A command line interface for Avalanche APIs
https://github.com/hsk81/avalanche-cli#readme
```

## Installation

```sh
$ apt-get install nodejs npm jq -y
```

```sh
$ npm install avalanche-cli -g
```

## Fetch Validator Addresses

Export URL of an Avalanche RPC node:

```
$ export AVAX_NODE=http://127.0.0.1:9050
```

Fetch all current validator P-chain addresses:

```sh
$ ./vals.sh > vals.txt
```

## Filter Validator Addresses

Filter for addresses with an export UTXO *from* the P-chain:

```sh
$ cat vals.txt | ./utxos-p.sh > utxos-p.txt
```

Filter for addresses with an export UTXO *from* the X-chain:

```sh
$ cat vals.txt | ./utxos-x.sh > utxos-x.txt
```

Filter for addresses with an export UTXO *from* the C-chain:

```sh
$ cat vals.txt | ./utxos-c.sh > utxos-c.txt
```

## Copyright

(c) 2024, [Hasan Karahan](avalanche@blackhan.com), MSc ETH Zurich.
