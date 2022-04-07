# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.ImageImageBackgroundRemovalApi;

public class ImageImageBackgroundRemovalApiExample {

    public static void main(String[] args) {
        ImageImageBackgroundRemovalApi apiInstance = new ImageImageBackgroundRemovalApi();
        File image = null; // File | 
        String model = xception; // String | 
        try {
            Object result = apiInstance.applyImageImageBackgroundRemovalPost(image, model);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ImageImageBackgroundRemovalApi#applyImageImageBackgroundRemovalPost");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ImageImageBackgroundRemovalApi* | [**applyImageImageBackgroundRemovalPost**](docs/ImageImageBackgroundRemovalApi.md#applyImageImageBackgroundRemovalPost) | **POST** /image/image/background-removal/ | Apply model for the background-removal task for a given models
*ImageImageBackgroundRemovalApi* | [**getVersionsImageImageBackgroundRemovalGet**](docs/ImageImageBackgroundRemovalApi.md#getVersionsImageImageBackgroundRemovalGet) | **GET** /image/image/background-removal/ | Get list of models available for background-removal
*ImageImageColorizationApi* | [**applyImageImageColorizationPost**](docs/ImageImageColorizationApi.md#applyImageImageColorizationPost) | **POST** /image/image/colorization/ | Apply model for the colorization task for a given models
*ImageImageColorizationApi* | [**getVersionsImageImageColorizationGet**](docs/ImageImageColorizationApi.md#getVersionsImageImageColorizationGet) | **GET** /image/image/colorization/ | Get list of models available for colorization
*ImageImageFaceBluringApi* | [**applyImageImageFaceBluringPost**](docs/ImageImageFaceBluringApi.md#applyImageImageFaceBluringPost) | **POST** /image/image/face-bluring/ | Apply model for the face-bluring task for a given models
*ImageImageFaceBluringApi* | [**getVersionsImageImageFaceBluringGet**](docs/ImageImageFaceBluringApi.md#getVersionsImageImageFaceBluringGet) | **GET** /image/image/face-bluring/ | Get list of models available for face-bluring
*ImageImageSuperResolutionApi* | [**applyImageImageSuperResolutionPost**](docs/ImageImageSuperResolutionApi.md#applyImageImageSuperResolutionPost) | **POST** /image/image/super-resolution/ | Apply model for the super-resolution task for a given models
*ImageImageSuperResolutionApi* | [**getVersionsImageImageSuperResolutionGet**](docs/ImageImageSuperResolutionApi.md#getVersionsImageImageSuperResolutionGet) | **GET** /image/image/super-resolution/ | Get list of models available for super-resolution
*ImageImageUncolorizationApi* | [**applyImageImageUncolorizationPost**](docs/ImageImageUncolorizationApi.md#applyImageImageUncolorizationPost) | **POST** /image/image/uncolorization/ | Apply model for the uncolorization task for a given models
*ImageImageUncolorizationApi* | [**getVersionsImageImageUncolorizationGet**](docs/ImageImageUncolorizationApi.md#getVersionsImageImageUncolorizationGet) | **GET** /image/image/uncolorization/ | Get list of models available for uncolorization
*ImageTextAsciifyApi* | [**applyImageTextAsciifyPost**](docs/ImageTextAsciifyApi.md#applyImageTextAsciifyPost) | **POST** /image/text/asciify/ | Apply model for the asciify task for a given models
*ImageTextAsciifyApi* | [**getVersionsImageTextAsciifyGet**](docs/ImageTextAsciifyApi.md#getVersionsImageTextAsciifyGet) | **GET** /image/text/asciify/ | Get list of models available for asciify
*ImageTextOcrApi* | [**applyImageTextOcrPost**](docs/ImageTextOcrApi.md#applyImageTextOcrPost) | **POST** /image/text/ocr/ | Apply model for the ocr task for a given models
*ImageTextOcrApi* | [**getVersionsImageTextOcrGet**](docs/ImageTextOcrApi.md#getVersionsImageTextOcrGet) | **GET** /image/text/ocr/ | Get list of models available for ocr
*TextTextAutocorrectApi* | [**applyTextTextAutocorrectPost**](docs/TextTextAutocorrectApi.md#applyTextTextAutocorrectPost) | **POST** /text/text/autocorrect/ | Apply model for the autocorrect task for a given models
*TextTextAutocorrectApi* | [**getVersionsTextTextAutocorrectGet**](docs/TextTextAutocorrectApi.md#getVersionsTextTextAutocorrectGet) | **GET** /text/text/autocorrect/ | Get list of models available for autocorrect
*TextTextEmotionRecognitionApi* | [**applyTextTextEmotionRecognitionPost**](docs/TextTextEmotionRecognitionApi.md#applyTextTextEmotionRecognitionPost) | **POST** /text/text/emotion-recognition/ | Apply model for the emotion-recognition task for a given models
*TextTextEmotionRecognitionApi* | [**getVersionsTextTextEmotionRecognitionGet**](docs/TextTextEmotionRecognitionApi.md#getVersionsTextTextEmotionRecognitionGet) | **GET** /text/text/emotion-recognition/ | Get list of models available for emotion-recognition
*TextTextEntityExtractionApi* | [**applyTextTextEntityExtractionPost**](docs/TextTextEntityExtractionApi.md#applyTextTextEntityExtractionPost) | **POST** /text/text/entity-extraction/ | Apply model for the entity-extraction task for a given models
*TextTextEntityExtractionApi* | [**getVersionsTextTextEntityExtractionGet**](docs/TextTextEntityExtractionApi.md#getVersionsTextTextEntityExtractionGet) | **GET** /text/text/entity-extraction/ | Get list of models available for entity-extraction
*TextTextHateSpeechDetectionApi* | [**applyTextTextHateSpeechDetectionPost**](docs/TextTextHateSpeechDetectionApi.md#applyTextTextHateSpeechDetectionPost) | **POST** /text/text/hate-speech-detection/ | Apply model for the hate-speech-detection task for a given models
*TextTextHateSpeechDetectionApi* | [**getVersionsTextTextHateSpeechDetectionGet**](docs/TextTextHateSpeechDetectionApi.md#getVersionsTextTextHateSpeechDetectionGet) | **GET** /text/text/hate-speech-detection/ | Get list of models available for hate-speech-detection
*TextTextKeywordExtractionApi* | [**applyTextTextKeywordExtractionPost**](docs/TextTextKeywordExtractionApi.md#applyTextTextKeywordExtractionPost) | **POST** /text/text/keyword-extraction/ | Apply model for the keyword-extraction task for a given models
*TextTextKeywordExtractionApi* | [**getVersionsTextTextKeywordExtractionGet**](docs/TextTextKeywordExtractionApi.md#getVersionsTextTextKeywordExtractionGet) | **GET** /text/text/keyword-extraction/ | Get list of models available for keyword-extraction
*TextTextLanguageDetectionApi* | [**applyTextTextLanguageDetectionPost**](docs/TextTextLanguageDetectionApi.md#applyTextTextLanguageDetectionPost) | **POST** /text/text/language-detection/ | Apply model for the language-detection task for a given models
*TextTextLanguageDetectionApi* | [**getVersionsTextTextLanguageDetectionGet**](docs/TextTextLanguageDetectionApi.md#getVersionsTextTextLanguageDetectionGet) | **GET** /text/text/language-detection/ | Get list of models available for language-detection
*TextTextLanguageGenerationApi* | [**applyTextTextLanguageGenerationPost**](docs/TextTextLanguageGenerationApi.md#applyTextTextLanguageGenerationPost) | **POST** /text/text/language-generation/ | Apply model for the language-generation task for a given models
*TextTextLanguageGenerationApi* | [**getVersionsTextTextLanguageGenerationGet**](docs/TextTextLanguageGenerationApi.md#getVersionsTextTextLanguageGenerationGet) | **GET** /text/text/language-generation/ | Get list of models available for language-generation
*TextTextLemmatizationApi* | [**applyTextTextLemmatizationPost**](docs/TextTextLemmatizationApi.md#applyTextTextLemmatizationPost) | **POST** /text/text/lemmatization/ | Apply model for the lemmatization task for a given models
*TextTextLemmatizationApi* | [**getVersionsTextTextLemmatizationGet**](docs/TextTextLemmatizationApi.md#getVersionsTextTextLemmatizationGet) | **GET** /text/text/lemmatization/ | Get list of models available for lemmatization
*TextTextNamedEntityRecognitionApi* | [**applyTextTextNamedEntityRecognitionPost**](docs/TextTextNamedEntityRecognitionApi.md#applyTextTextNamedEntityRecognitionPost) | **POST** /text/text/named-entity-recognition/ | Apply model for the named-entity-recognition task for a given models
*TextTextNamedEntityRecognitionApi* | [**getVersionsTextTextNamedEntityRecognitionGet**](docs/TextTextNamedEntityRecognitionApi.md#getVersionsTextTextNamedEntityRecognitionGet) | **GET** /text/text/named-entity-recognition/ | Get list of models available for named-entity-recognition
*TextTextNextSentencePredictionApi* | [**applyTextTextNextSentencePredictionPost**](docs/TextTextNextSentencePredictionApi.md#applyTextTextNextSentencePredictionPost) | **POST** /text/text/next-sentence-prediction/ | Apply model for the next-sentence-prediction task for a given models
*TextTextNextSentencePredictionApi* | [**getVersionsTextTextNextSentencePredictionGet**](docs/TextTextNextSentencePredictionApi.md#getVersionsTextTextNextSentencePredictionGet) | **GET** /text/text/next-sentence-prediction/ | Get list of models available for next-sentence-prediction
*TextTextNextWordPredictionApi* | [**applyTextTextNextWordPredictionPost**](docs/TextTextNextWordPredictionApi.md#applyTextTextNextWordPredictionPost) | **POST** /text/text/next-word-prediction/ | Apply model for the next-word-prediction task for a given models
*TextTextNextWordPredictionApi* | [**getVersionsTextTextNextWordPredictionGet**](docs/TextTextNextWordPredictionApi.md#getVersionsTextTextNextWordPredictionGet) | **GET** /text/text/next-word-prediction/ | Get list of models available for next-word-prediction
*TextTextPluralApi* | [**applyTextTextPluralPost**](docs/TextTextPluralApi.md#applyTextTextPluralPost) | **POST** /text/text/plural/ | Apply model for the plural task for a given models
*TextTextPluralApi* | [**getVersionsTextTextPluralGet**](docs/TextTextPluralApi.md#getVersionsTextTextPluralGet) | **GET** /text/text/plural/ | Get list of models available for plural
*TextTextProgrammingLanguageGenerationApi* | [**applyTextTextProgrammingLanguageGenerationPost**](docs/TextTextProgrammingLanguageGenerationApi.md#applyTextTextProgrammingLanguageGenerationPost) | **POST** /text/text/programming-language-generation/ | Apply model for the programming-language-generation task for a given models
*TextTextProgrammingLanguageGenerationApi* | [**getVersionsTextTextProgrammingLanguageGenerationGet**](docs/TextTextProgrammingLanguageGenerationApi.md#getVersionsTextTextProgrammingLanguageGenerationGet) | **GET** /text/text/programming-language-generation/ | Get list of models available for programming-language-generation
*TextTextQuestionAnsweringApi* | [**applyTextTextQuestionAnsweringPost**](docs/TextTextQuestionAnsweringApi.md#applyTextTextQuestionAnsweringPost) | **POST** /text/text/question-answering/ | Apply model for the question-answering task for a given models
*TextTextQuestionAnsweringApi* | [**getVersionsTextTextQuestionAnsweringGet**](docs/TextTextQuestionAnsweringApi.md#getVersionsTextTextQuestionAnsweringGet) | **GET** /text/text/question-answering/ | Get list of models available for question-answering
*TextTextSentenceParaphraserApi* | [**applyTextTextSentenceParaphraserPost**](docs/TextTextSentenceParaphraserApi.md#applyTextTextSentenceParaphraserPost) | **POST** /text/text/sentence-paraphraser/ | Apply model for the sentence-paraphraser task for a given models
*TextTextSentenceParaphraserApi* | [**getVersionsTextTextSentenceParaphraserGet**](docs/TextTextSentenceParaphraserApi.md#getVersionsTextTextSentenceParaphraserGet) | **GET** /text/text/sentence-paraphraser/ | Get list of models available for sentence-paraphraser
*TextTextSentimentAnalysisApi* | [**applyTextTextSentimentAnalysisPost**](docs/TextTextSentimentAnalysisApi.md#applyTextTextSentimentAnalysisPost) | **POST** /text/text/sentiment-analysis/ | Apply model for the sentiment-analysis task for a given models
*TextTextSentimentAnalysisApi* | [**getVersionsTextTextSentimentAnalysisGet**](docs/TextTextSentimentAnalysisApi.md#getVersionsTextTextSentimentAnalysisGet) | **GET** /text/text/sentiment-analysis/ | Get list of models available for sentiment-analysis
*TextTextSimilarityApi* | [**applyTextTextSimilarityPost**](docs/TextTextSimilarityApi.md#applyTextTextSimilarityPost) | **POST** /text/text/similarity/ | Apply model for the similarity task for a given models
*TextTextSimilarityApi* | [**getVersionsTextTextSimilarityGet**](docs/TextTextSimilarityApi.md#getVersionsTextTextSimilarityGet) | **GET** /text/text/similarity/ | Get list of models available for similarity
*TextTextWordAlignmentApi* | [**applyTextTextWordAlignmentPost**](docs/TextTextWordAlignmentApi.md#applyTextTextWordAlignmentPost) | **POST** /text/text/word-alignment/ | Apply model for the word-alignment task for a given models
*TextTextWordAlignmentApi* | [**getVersionsTextTextWordAlignmentGet**](docs/TextTextWordAlignmentApi.md#getVersionsTextTextWordAlignmentGet) | **GET** /text/text/word-alignment/ | Get list of models available for word-alignment


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
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author



