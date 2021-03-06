# R API client for openapi

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 0.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("caTools")
```

### Build the package

```sh
git clone https://github.com/GIT_USER_ID/GIT_REPO_ID
cd GIT_REPO_ID
R CMD build .
R CMD check openapi_1.0.0.tar.gz
R CMD INSTALL openapi_1.0.0.tar.gz
```

### Install the package

```R
install.packages("openapi")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("GIT_USER_ID/GIT_REPO_ID")
```

### Usage

```R
library(openapi)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ImageImageBackgroundRemovalApi* | [**ApplyImageImageBackgroundRemovalPost**](docs/ImageImageBackgroundRemovalApi.md#ApplyImageImageBackgroundRemovalPost) | **POST** /image/image/background-removal/ | Apply model for the background-removal task for a given models
*ImageImageBackgroundRemovalApi* | [**GetVersionsImageImageBackgroundRemovalGet**](docs/ImageImageBackgroundRemovalApi.md#GetVersionsImageImageBackgroundRemovalGet) | **GET** /image/image/background-removal/ | Get list of models available for background-removal
*ImageImageColorizationApi* | [**ApplyImageImageColorizationPost**](docs/ImageImageColorizationApi.md#ApplyImageImageColorizationPost) | **POST** /image/image/colorization/ | Apply model for the colorization task for a given models
*ImageImageColorizationApi* | [**GetVersionsImageImageColorizationGet**](docs/ImageImageColorizationApi.md#GetVersionsImageImageColorizationGet) | **GET** /image/image/colorization/ | Get list of models available for colorization
*ImageImageFaceBluringApi* | [**ApplyImageImageFaceBluringPost**](docs/ImageImageFaceBluringApi.md#ApplyImageImageFaceBluringPost) | **POST** /image/image/face-bluring/ | Apply model for the face-bluring task for a given models
*ImageImageFaceBluringApi* | [**GetVersionsImageImageFaceBluringGet**](docs/ImageImageFaceBluringApi.md#GetVersionsImageImageFaceBluringGet) | **GET** /image/image/face-bluring/ | Get list of models available for face-bluring
*ImageImageSuperResolutionApi* | [**ApplyImageImageSuperResolutionPost**](docs/ImageImageSuperResolutionApi.md#ApplyImageImageSuperResolutionPost) | **POST** /image/image/super-resolution/ | Apply model for the super-resolution task for a given models
*ImageImageSuperResolutionApi* | [**GetVersionsImageImageSuperResolutionGet**](docs/ImageImageSuperResolutionApi.md#GetVersionsImageImageSuperResolutionGet) | **GET** /image/image/super-resolution/ | Get list of models available for super-resolution
*ImageImageUncolorizationApi* | [**ApplyImageImageUncolorizationPost**](docs/ImageImageUncolorizationApi.md#ApplyImageImageUncolorizationPost) | **POST** /image/image/uncolorization/ | Apply model for the uncolorization task for a given models
*ImageImageUncolorizationApi* | [**GetVersionsImageImageUncolorizationGet**](docs/ImageImageUncolorizationApi.md#GetVersionsImageImageUncolorizationGet) | **GET** /image/image/uncolorization/ | Get list of models available for uncolorization
*ImageTextAsciifyApi* | [**ApplyImageTextAsciifyPost**](docs/ImageTextAsciifyApi.md#ApplyImageTextAsciifyPost) | **POST** /image/text/asciify/ | Apply model for the asciify task for a given models
*ImageTextAsciifyApi* | [**GetVersionsImageTextAsciifyGet**](docs/ImageTextAsciifyApi.md#GetVersionsImageTextAsciifyGet) | **GET** /image/text/asciify/ | Get list of models available for asciify
*ImageTextOcrApi* | [**ApplyImageTextOcrPost**](docs/ImageTextOcrApi.md#ApplyImageTextOcrPost) | **POST** /image/text/ocr/ | Apply model for the ocr task for a given models
*ImageTextOcrApi* | [**GetVersionsImageTextOcrGet**](docs/ImageTextOcrApi.md#GetVersionsImageTextOcrGet) | **GET** /image/text/ocr/ | Get list of models available for ocr
*TextTextAutocorrectApi* | [**ApplyTextTextAutocorrectPost**](docs/TextTextAutocorrectApi.md#ApplyTextTextAutocorrectPost) | **POST** /text/text/autocorrect/ | Apply model for the autocorrect task for a given models
*TextTextAutocorrectApi* | [**GetVersionsTextTextAutocorrectGet**](docs/TextTextAutocorrectApi.md#GetVersionsTextTextAutocorrectGet) | **GET** /text/text/autocorrect/ | Get list of models available for autocorrect
*TextTextEmotionRecognitionApi* | [**ApplyTextTextEmotionRecognitionPost**](docs/TextTextEmotionRecognitionApi.md#ApplyTextTextEmotionRecognitionPost) | **POST** /text/text/emotion-recognition/ | Apply model for the emotion-recognition task for a given models
*TextTextEmotionRecognitionApi* | [**GetVersionsTextTextEmotionRecognitionGet**](docs/TextTextEmotionRecognitionApi.md#GetVersionsTextTextEmotionRecognitionGet) | **GET** /text/text/emotion-recognition/ | Get list of models available for emotion-recognition
*TextTextEntityExtractionApi* | [**ApplyTextTextEntityExtractionPost**](docs/TextTextEntityExtractionApi.md#ApplyTextTextEntityExtractionPost) | **POST** /text/text/entity-extraction/ | Apply model for the entity-extraction task for a given models
*TextTextEntityExtractionApi* | [**GetVersionsTextTextEntityExtractionGet**](docs/TextTextEntityExtractionApi.md#GetVersionsTextTextEntityExtractionGet) | **GET** /text/text/entity-extraction/ | Get list of models available for entity-extraction
*TextTextHateSpeechDetectionApi* | [**ApplyTextTextHateSpeechDetectionPost**](docs/TextTextHateSpeechDetectionApi.md#ApplyTextTextHateSpeechDetectionPost) | **POST** /text/text/hate-speech-detection/ | Apply model for the hate-speech-detection task for a given models
*TextTextHateSpeechDetectionApi* | [**GetVersionsTextTextHateSpeechDetectionGet**](docs/TextTextHateSpeechDetectionApi.md#GetVersionsTextTextHateSpeechDetectionGet) | **GET** /text/text/hate-speech-detection/ | Get list of models available for hate-speech-detection
*TextTextKeywordExtractionApi* | [**ApplyTextTextKeywordExtractionPost**](docs/TextTextKeywordExtractionApi.md#ApplyTextTextKeywordExtractionPost) | **POST** /text/text/keyword-extraction/ | Apply model for the keyword-extraction task for a given models
*TextTextKeywordExtractionApi* | [**GetVersionsTextTextKeywordExtractionGet**](docs/TextTextKeywordExtractionApi.md#GetVersionsTextTextKeywordExtractionGet) | **GET** /text/text/keyword-extraction/ | Get list of models available for keyword-extraction
*TextTextLanguageDetectionApi* | [**ApplyTextTextLanguageDetectionPost**](docs/TextTextLanguageDetectionApi.md#ApplyTextTextLanguageDetectionPost) | **POST** /text/text/language-detection/ | Apply model for the language-detection task for a given models
*TextTextLanguageDetectionApi* | [**GetVersionsTextTextLanguageDetectionGet**](docs/TextTextLanguageDetectionApi.md#GetVersionsTextTextLanguageDetectionGet) | **GET** /text/text/language-detection/ | Get list of models available for language-detection
*TextTextLanguageGenerationApi* | [**ApplyTextTextLanguageGenerationPost**](docs/TextTextLanguageGenerationApi.md#ApplyTextTextLanguageGenerationPost) | **POST** /text/text/language-generation/ | Apply model for the language-generation task for a given models
*TextTextLanguageGenerationApi* | [**GetVersionsTextTextLanguageGenerationGet**](docs/TextTextLanguageGenerationApi.md#GetVersionsTextTextLanguageGenerationGet) | **GET** /text/text/language-generation/ | Get list of models available for language-generation
*TextTextLemmatizationApi* | [**ApplyTextTextLemmatizationPost**](docs/TextTextLemmatizationApi.md#ApplyTextTextLemmatizationPost) | **POST** /text/text/lemmatization/ | Apply model for the lemmatization task for a given models
*TextTextLemmatizationApi* | [**GetVersionsTextTextLemmatizationGet**](docs/TextTextLemmatizationApi.md#GetVersionsTextTextLemmatizationGet) | **GET** /text/text/lemmatization/ | Get list of models available for lemmatization
*TextTextNamedEntityRecognitionApi* | [**ApplyTextTextNamedEntityRecognitionPost**](docs/TextTextNamedEntityRecognitionApi.md#ApplyTextTextNamedEntityRecognitionPost) | **POST** /text/text/named-entity-recognition/ | Apply model for the named-entity-recognition task for a given models
*TextTextNamedEntityRecognitionApi* | [**GetVersionsTextTextNamedEntityRecognitionGet**](docs/TextTextNamedEntityRecognitionApi.md#GetVersionsTextTextNamedEntityRecognitionGet) | **GET** /text/text/named-entity-recognition/ | Get list of models available for named-entity-recognition
*TextTextNextSentencePredictionApi* | [**ApplyTextTextNextSentencePredictionPost**](docs/TextTextNextSentencePredictionApi.md#ApplyTextTextNextSentencePredictionPost) | **POST** /text/text/next-sentence-prediction/ | Apply model for the next-sentence-prediction task for a given models
*TextTextNextSentencePredictionApi* | [**GetVersionsTextTextNextSentencePredictionGet**](docs/TextTextNextSentencePredictionApi.md#GetVersionsTextTextNextSentencePredictionGet) | **GET** /text/text/next-sentence-prediction/ | Get list of models available for next-sentence-prediction
*TextTextNextWordPredictionApi* | [**ApplyTextTextNextWordPredictionPost**](docs/TextTextNextWordPredictionApi.md#ApplyTextTextNextWordPredictionPost) | **POST** /text/text/next-word-prediction/ | Apply model for the next-word-prediction task for a given models
*TextTextNextWordPredictionApi* | [**GetVersionsTextTextNextWordPredictionGet**](docs/TextTextNextWordPredictionApi.md#GetVersionsTextTextNextWordPredictionGet) | **GET** /text/text/next-word-prediction/ | Get list of models available for next-word-prediction
*TextTextPluralApi* | [**ApplyTextTextPluralPost**](docs/TextTextPluralApi.md#ApplyTextTextPluralPost) | **POST** /text/text/plural/ | Apply model for the plural task for a given models
*TextTextPluralApi* | [**GetVersionsTextTextPluralGet**](docs/TextTextPluralApi.md#GetVersionsTextTextPluralGet) | **GET** /text/text/plural/ | Get list of models available for plural
*TextTextProgrammingLanguageGenerationApi* | [**ApplyTextTextProgrammingLanguageGenerationPost**](docs/TextTextProgrammingLanguageGenerationApi.md#ApplyTextTextProgrammingLanguageGenerationPost) | **POST** /text/text/programming-language-generation/ | Apply model for the programming-language-generation task for a given models
*TextTextProgrammingLanguageGenerationApi* | [**GetVersionsTextTextProgrammingLanguageGenerationGet**](docs/TextTextProgrammingLanguageGenerationApi.md#GetVersionsTextTextProgrammingLanguageGenerationGet) | **GET** /text/text/programming-language-generation/ | Get list of models available for programming-language-generation
*TextTextQuestionAnsweringApi* | [**ApplyTextTextQuestionAnsweringPost**](docs/TextTextQuestionAnsweringApi.md#ApplyTextTextQuestionAnsweringPost) | **POST** /text/text/question-answering/ | Apply model for the question-answering task for a given models
*TextTextQuestionAnsweringApi* | [**GetVersionsTextTextQuestionAnsweringGet**](docs/TextTextQuestionAnsweringApi.md#GetVersionsTextTextQuestionAnsweringGet) | **GET** /text/text/question-answering/ | Get list of models available for question-answering
*TextTextSentenceParaphraserApi* | [**ApplyTextTextSentenceParaphraserPost**](docs/TextTextSentenceParaphraserApi.md#ApplyTextTextSentenceParaphraserPost) | **POST** /text/text/sentence-paraphraser/ | Apply model for the sentence-paraphraser task for a given models
*TextTextSentenceParaphraserApi* | [**GetVersionsTextTextSentenceParaphraserGet**](docs/TextTextSentenceParaphraserApi.md#GetVersionsTextTextSentenceParaphraserGet) | **GET** /text/text/sentence-paraphraser/ | Get list of models available for sentence-paraphraser
*TextTextSentimentAnalysisApi* | [**ApplyTextTextSentimentAnalysisPost**](docs/TextTextSentimentAnalysisApi.md#ApplyTextTextSentimentAnalysisPost) | **POST** /text/text/sentiment-analysis/ | Apply model for the sentiment-analysis task for a given models
*TextTextSentimentAnalysisApi* | [**GetVersionsTextTextSentimentAnalysisGet**](docs/TextTextSentimentAnalysisApi.md#GetVersionsTextTextSentimentAnalysisGet) | **GET** /text/text/sentiment-analysis/ | Get list of models available for sentiment-analysis
*TextTextSimilarityApi* | [**ApplyTextTextSimilarityPost**](docs/TextTextSimilarityApi.md#ApplyTextTextSimilarityPost) | **POST** /text/text/similarity/ | Apply model for the similarity task for a given models
*TextTextSimilarityApi* | [**GetVersionsTextTextSimilarityGet**](docs/TextTextSimilarityApi.md#GetVersionsTextTextSimilarityGet) | **GET** /text/text/similarity/ | Get list of models available for similarity
*TextTextWordAlignmentApi* | [**ApplyTextTextWordAlignmentPost**](docs/TextTextWordAlignmentApi.md#ApplyTextTextWordAlignmentPost) | **POST** /text/text/word-alignment/ | Apply model for the word-alignment task for a given models
*TextTextWordAlignmentApi* | [**GetVersionsTextTextWordAlignmentGet**](docs/TextTextWordAlignmentApi.md#GetVersionsTextTextWordAlignmentGet) | **GET** /text/text/word-alignment/ | Get list of models available for word-alignment


## Documentation for Models

 - [BodyApplyImageImageBackgroundRemovalPost](docs/BodyApplyImageImageBackgroundRemovalPost.md)
 - [BodyApplyImageImageColorizationPost](docs/BodyApplyImageImageColorizationPost.md)
 - [BodyApplyImageImageFaceBluringPost](docs/BodyApplyImageImageFaceBluringPost.md)
 - [BodyApplyImageImageSuperResolutionPost](docs/BodyApplyImageImageSuperResolutionPost.md)
 - [BodyApplyImageImageUncolorizationPost](docs/BodyApplyImageImageUncolorizationPost.md)
 - [BodyApplyImageTextAsciifyPost](docs/BodyApplyImageTextAsciifyPost.md)
 - [BodyApplyImageTextOcrPost](docs/BodyApplyImageTextOcrPost.md)
 - [HTTPValidationError](docs/HTTPValidationError.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation for Authorization

 All endpoints do not require authorization.



## Author



