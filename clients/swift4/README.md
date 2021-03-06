# Swift4 API client for OpenAPIClient

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 0.1.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift4Codegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ImageImageBackgroundRemovalAPI* | [**applyImageImageBackgroundRemovalPost**](docs/ImageImageBackgroundRemovalAPI.md#applyimageimagebackgroundremovalpost) | **POST** /image/image/background-removal/ | Apply model for the background-removal task for a given models
*ImageImageBackgroundRemovalAPI* | [**getVersionsImageImageBackgroundRemovalGet**](docs/ImageImageBackgroundRemovalAPI.md#getversionsimageimagebackgroundremovalget) | **GET** /image/image/background-removal/ | Get list of models available for background-removal
*ImageImageColorizationAPI* | [**applyImageImageColorizationPost**](docs/ImageImageColorizationAPI.md#applyimageimagecolorizationpost) | **POST** /image/image/colorization/ | Apply model for the colorization task for a given models
*ImageImageColorizationAPI* | [**getVersionsImageImageColorizationGet**](docs/ImageImageColorizationAPI.md#getversionsimageimagecolorizationget) | **GET** /image/image/colorization/ | Get list of models available for colorization
*ImageImageFaceBluringAPI* | [**applyImageImageFaceBluringPost**](docs/ImageImageFaceBluringAPI.md#applyimageimagefacebluringpost) | **POST** /image/image/face-bluring/ | Apply model for the face-bluring task for a given models
*ImageImageFaceBluringAPI* | [**getVersionsImageImageFaceBluringGet**](docs/ImageImageFaceBluringAPI.md#getversionsimageimagefacebluringget) | **GET** /image/image/face-bluring/ | Get list of models available for face-bluring
*ImageImageSuperResolutionAPI* | [**applyImageImageSuperResolutionPost**](docs/ImageImageSuperResolutionAPI.md#applyimageimagesuperresolutionpost) | **POST** /image/image/super-resolution/ | Apply model for the super-resolution task for a given models
*ImageImageSuperResolutionAPI* | [**getVersionsImageImageSuperResolutionGet**](docs/ImageImageSuperResolutionAPI.md#getversionsimageimagesuperresolutionget) | **GET** /image/image/super-resolution/ | Get list of models available for super-resolution
*ImageImageUncolorizationAPI* | [**applyImageImageUncolorizationPost**](docs/ImageImageUncolorizationAPI.md#applyimageimageuncolorizationpost) | **POST** /image/image/uncolorization/ | Apply model for the uncolorization task for a given models
*ImageImageUncolorizationAPI* | [**getVersionsImageImageUncolorizationGet**](docs/ImageImageUncolorizationAPI.md#getversionsimageimageuncolorizationget) | **GET** /image/image/uncolorization/ | Get list of models available for uncolorization
*ImageTextAsciifyAPI* | [**applyImageTextAsciifyPost**](docs/ImageTextAsciifyAPI.md#applyimagetextasciifypost) | **POST** /image/text/asciify/ | Apply model for the asciify task for a given models
*ImageTextAsciifyAPI* | [**getVersionsImageTextAsciifyGet**](docs/ImageTextAsciifyAPI.md#getversionsimagetextasciifyget) | **GET** /image/text/asciify/ | Get list of models available for asciify
*ImageTextOcrAPI* | [**applyImageTextOcrPost**](docs/ImageTextOcrAPI.md#applyimagetextocrpost) | **POST** /image/text/ocr/ | Apply model for the ocr task for a given models
*ImageTextOcrAPI* | [**getVersionsImageTextOcrGet**](docs/ImageTextOcrAPI.md#getversionsimagetextocrget) | **GET** /image/text/ocr/ | Get list of models available for ocr
*TextTextAutocorrectAPI* | [**applyTextTextAutocorrectPost**](docs/TextTextAutocorrectAPI.md#applytexttextautocorrectpost) | **POST** /text/text/autocorrect/ | Apply model for the autocorrect task for a given models
*TextTextAutocorrectAPI* | [**getVersionsTextTextAutocorrectGet**](docs/TextTextAutocorrectAPI.md#getversionstexttextautocorrectget) | **GET** /text/text/autocorrect/ | Get list of models available for autocorrect
*TextTextEmotionRecognitionAPI* | [**applyTextTextEmotionRecognitionPost**](docs/TextTextEmotionRecognitionAPI.md#applytexttextemotionrecognitionpost) | **POST** /text/text/emotion-recognition/ | Apply model for the emotion-recognition task for a given models
*TextTextEmotionRecognitionAPI* | [**getVersionsTextTextEmotionRecognitionGet**](docs/TextTextEmotionRecognitionAPI.md#getversionstexttextemotionrecognitionget) | **GET** /text/text/emotion-recognition/ | Get list of models available for emotion-recognition
*TextTextEntityExtractionAPI* | [**applyTextTextEntityExtractionPost**](docs/TextTextEntityExtractionAPI.md#applytexttextentityextractionpost) | **POST** /text/text/entity-extraction/ | Apply model for the entity-extraction task for a given models
*TextTextEntityExtractionAPI* | [**getVersionsTextTextEntityExtractionGet**](docs/TextTextEntityExtractionAPI.md#getversionstexttextentityextractionget) | **GET** /text/text/entity-extraction/ | Get list of models available for entity-extraction
*TextTextHateSpeechDetectionAPI* | [**applyTextTextHateSpeechDetectionPost**](docs/TextTextHateSpeechDetectionAPI.md#applytexttexthatespeechdetectionpost) | **POST** /text/text/hate-speech-detection/ | Apply model for the hate-speech-detection task for a given models
*TextTextHateSpeechDetectionAPI* | [**getVersionsTextTextHateSpeechDetectionGet**](docs/TextTextHateSpeechDetectionAPI.md#getversionstexttexthatespeechdetectionget) | **GET** /text/text/hate-speech-detection/ | Get list of models available for hate-speech-detection
*TextTextKeywordExtractionAPI* | [**applyTextTextKeywordExtractionPost**](docs/TextTextKeywordExtractionAPI.md#applytexttextkeywordextractionpost) | **POST** /text/text/keyword-extraction/ | Apply model for the keyword-extraction task for a given models
*TextTextKeywordExtractionAPI* | [**getVersionsTextTextKeywordExtractionGet**](docs/TextTextKeywordExtractionAPI.md#getversionstexttextkeywordextractionget) | **GET** /text/text/keyword-extraction/ | Get list of models available for keyword-extraction
*TextTextLanguageDetectionAPI* | [**applyTextTextLanguageDetectionPost**](docs/TextTextLanguageDetectionAPI.md#applytexttextlanguagedetectionpost) | **POST** /text/text/language-detection/ | Apply model for the language-detection task for a given models
*TextTextLanguageDetectionAPI* | [**getVersionsTextTextLanguageDetectionGet**](docs/TextTextLanguageDetectionAPI.md#getversionstexttextlanguagedetectionget) | **GET** /text/text/language-detection/ | Get list of models available for language-detection
*TextTextLanguageGenerationAPI* | [**applyTextTextLanguageGenerationPost**](docs/TextTextLanguageGenerationAPI.md#applytexttextlanguagegenerationpost) | **POST** /text/text/language-generation/ | Apply model for the language-generation task for a given models
*TextTextLanguageGenerationAPI* | [**getVersionsTextTextLanguageGenerationGet**](docs/TextTextLanguageGenerationAPI.md#getversionstexttextlanguagegenerationget) | **GET** /text/text/language-generation/ | Get list of models available for language-generation
*TextTextLemmatizationAPI* | [**applyTextTextLemmatizationPost**](docs/TextTextLemmatizationAPI.md#applytexttextlemmatizationpost) | **POST** /text/text/lemmatization/ | Apply model for the lemmatization task for a given models
*TextTextLemmatizationAPI* | [**getVersionsTextTextLemmatizationGet**](docs/TextTextLemmatizationAPI.md#getversionstexttextlemmatizationget) | **GET** /text/text/lemmatization/ | Get list of models available for lemmatization
*TextTextNamedEntityRecognitionAPI* | [**applyTextTextNamedEntityRecognitionPost**](docs/TextTextNamedEntityRecognitionAPI.md#applytexttextnamedentityrecognitionpost) | **POST** /text/text/named-entity-recognition/ | Apply model for the named-entity-recognition task for a given models
*TextTextNamedEntityRecognitionAPI* | [**getVersionsTextTextNamedEntityRecognitionGet**](docs/TextTextNamedEntityRecognitionAPI.md#getversionstexttextnamedentityrecognitionget) | **GET** /text/text/named-entity-recognition/ | Get list of models available for named-entity-recognition
*TextTextNextSentencePredictionAPI* | [**applyTextTextNextSentencePredictionPost**](docs/TextTextNextSentencePredictionAPI.md#applytexttextnextsentencepredictionpost) | **POST** /text/text/next-sentence-prediction/ | Apply model for the next-sentence-prediction task for a given models
*TextTextNextSentencePredictionAPI* | [**getVersionsTextTextNextSentencePredictionGet**](docs/TextTextNextSentencePredictionAPI.md#getversionstexttextnextsentencepredictionget) | **GET** /text/text/next-sentence-prediction/ | Get list of models available for next-sentence-prediction
*TextTextNextWordPredictionAPI* | [**applyTextTextNextWordPredictionPost**](docs/TextTextNextWordPredictionAPI.md#applytexttextnextwordpredictionpost) | **POST** /text/text/next-word-prediction/ | Apply model for the next-word-prediction task for a given models
*TextTextNextWordPredictionAPI* | [**getVersionsTextTextNextWordPredictionGet**](docs/TextTextNextWordPredictionAPI.md#getversionstexttextnextwordpredictionget) | **GET** /text/text/next-word-prediction/ | Get list of models available for next-word-prediction
*TextTextPluralAPI* | [**applyTextTextPluralPost**](docs/TextTextPluralAPI.md#applytexttextpluralpost) | **POST** /text/text/plural/ | Apply model for the plural task for a given models
*TextTextPluralAPI* | [**getVersionsTextTextPluralGet**](docs/TextTextPluralAPI.md#getversionstexttextpluralget) | **GET** /text/text/plural/ | Get list of models available for plural
*TextTextProgrammingLanguageGenerationAPI* | [**applyTextTextProgrammingLanguageGenerationPost**](docs/TextTextProgrammingLanguageGenerationAPI.md#applytexttextprogramminglanguagegenerationpost) | **POST** /text/text/programming-language-generation/ | Apply model for the programming-language-generation task for a given models
*TextTextProgrammingLanguageGenerationAPI* | [**getVersionsTextTextProgrammingLanguageGenerationGet**](docs/TextTextProgrammingLanguageGenerationAPI.md#getversionstexttextprogramminglanguagegenerationget) | **GET** /text/text/programming-language-generation/ | Get list of models available for programming-language-generation
*TextTextQuestionAnsweringAPI* | [**applyTextTextQuestionAnsweringPost**](docs/TextTextQuestionAnsweringAPI.md#applytexttextquestionansweringpost) | **POST** /text/text/question-answering/ | Apply model for the question-answering task for a given models
*TextTextQuestionAnsweringAPI* | [**getVersionsTextTextQuestionAnsweringGet**](docs/TextTextQuestionAnsweringAPI.md#getversionstexttextquestionansweringget) | **GET** /text/text/question-answering/ | Get list of models available for question-answering
*TextTextSentenceParaphraserAPI* | [**applyTextTextSentenceParaphraserPost**](docs/TextTextSentenceParaphraserAPI.md#applytexttextsentenceparaphraserpost) | **POST** /text/text/sentence-paraphraser/ | Apply model for the sentence-paraphraser task for a given models
*TextTextSentenceParaphraserAPI* | [**getVersionsTextTextSentenceParaphraserGet**](docs/TextTextSentenceParaphraserAPI.md#getversionstexttextsentenceparaphraserget) | **GET** /text/text/sentence-paraphraser/ | Get list of models available for sentence-paraphraser
*TextTextSentimentAnalysisAPI* | [**applyTextTextSentimentAnalysisPost**](docs/TextTextSentimentAnalysisAPI.md#applytexttextsentimentanalysispost) | **POST** /text/text/sentiment-analysis/ | Apply model for the sentiment-analysis task for a given models
*TextTextSentimentAnalysisAPI* | [**getVersionsTextTextSentimentAnalysisGet**](docs/TextTextSentimentAnalysisAPI.md#getversionstexttextsentimentanalysisget) | **GET** /text/text/sentiment-analysis/ | Get list of models available for sentiment-analysis
*TextTextSimilarityAPI* | [**applyTextTextSimilarityPost**](docs/TextTextSimilarityAPI.md#applytexttextsimilaritypost) | **POST** /text/text/similarity/ | Apply model for the similarity task for a given models
*TextTextSimilarityAPI* | [**getVersionsTextTextSimilarityGet**](docs/TextTextSimilarityAPI.md#getversionstexttextsimilarityget) | **GET** /text/text/similarity/ | Get list of models available for similarity
*TextTextWordAlignmentAPI* | [**applyTextTextWordAlignmentPost**](docs/TextTextWordAlignmentAPI.md#applytexttextwordalignmentpost) | **POST** /text/text/word-alignment/ | Apply model for the word-alignment task for a given models
*TextTextWordAlignmentAPI* | [**getVersionsTextTextWordAlignmentGet**](docs/TextTextWordAlignmentAPI.md#getversionstexttextwordalignmentget) | **GET** /text/text/word-alignment/ | Get list of models available for word-alignment


## Documentation For Models

 - [BodyApplyImageImageBackgroundRemovalPost](docs/BodyApplyImageImageBackgroundRemovalPost.md)
 - [BodyApplyImageImageColorizationPost](docs/BodyApplyImageImageColorizationPost.md)
 - [BodyApplyImageImageFaceBluringPost](docs/BodyApplyImageImageFaceBluringPost.md)
 - [BodyApplyImageImageSuperResolutionPost](docs/BodyApplyImageImageSuperResolutionPost.md)
 - [BodyApplyImageImageUncolorizationPost](docs/BodyApplyImageImageUncolorizationPost.md)
 - [BodyApplyImageTextAsciifyPost](docs/BodyApplyImageTextAsciifyPost.md)
 - [BodyApplyImageTextOcrPost](docs/BodyApplyImageTextOcrPost.md)
 - [HTTPValidationError](docs/HTTPValidationError.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author



