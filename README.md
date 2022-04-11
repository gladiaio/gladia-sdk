# Gladia's SDKs

Automatic SDK generation from Gladia's OpenAPI definition.

## Requirements

Before running this script, you need to have the following dependencies:
* Python 3.6+
    * `easyargs==0.9.*`
* Docker 20.03+

## Installation

```sh
git clone https://github.com/gladiaio/gladia-sdk.git ; cd gladia-sdk
```

## Usage

You first need to start the [Gladia's API](https://github.com/gladiaio/gladia) by following [its README](https://github.com/gladiaio/gladia#magic-start).

We recommend to first clean the  [clients directory](clients) to prevent any deprecated SDK:
```sh
rm -rf clients/*
```

Then set `GLADIA_API_URL` in your environment as the URL of the Gladia's API (by default it's `http://localhost:8080`) and provide it to the following command:
```sh
cd generator ; python generate_sdk.py $GLADIA_API_URL
```
Note that you do not include the `openapi.json` extension within the URL.


SDKs will be generated in the [clients directory](clients)

## Examples
    
To verify that the SDKs are working, you can follow those examples:

* [Python client](./clients/python/README.md)
* [JavaScript client](./clients/javascript/README.md)
* [Golang client](./clients/golang/README.md)

(For more examples, see the [clients directory](./clients/))