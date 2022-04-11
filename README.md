# Gladia's SDKs

Automatic SDK generation from Gladia's OpenAPI definition.

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

Then provide the gladia API URL (by default it's `http://localhost:8080`) to the following command:
```sh
cd generator ; python generate_sdk.py $GLADIA_API_URL
```
Note that you do not include the `openapi.json` extension within the URL.


SDKs will be generated in the [clients directory](clients)