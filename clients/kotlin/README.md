# org.openapitools.client - Kotlin client library for FastAPI

## Requires

* Kotlin 1.3.31
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.



<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.
