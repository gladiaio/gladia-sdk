# FastAPI Bash client

## Overview

This is a Bash client script for accessing FastAPI service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ImageImageBackgroundRemovalApi* | [**applyImageImageBackgroundRemovalPost**](docs/ImageImageBackgroundRemovalApi.md#applyimageimagebackgroundremovalpost) | **POST** /image/image/background-removal/ | Apply model for the background-removal task for a given models
*ImageImageBackgroundRemovalApi* | [**getVersionsImageImageBackgroundRemovalGet**](docs/ImageImageBackgroundRemovalApi.md#getversionsimageimagebackgroundremovalget) | **GET** /image/image/background-removal/ | Get list of models available for background-removal
*ImageImageColorizationApi* | [**applyImageImageColorizationPost**](docs/ImageImageColorizationApi.md#applyimageimagecolorizationpost) | **POST** /image/image/colorization/ | Apply model for the colorization task for a given models
*ImageImageColorizationApi* | [**getVersionsImageImageColorizationGet**](docs/ImageImageColorizationApi.md#getversionsimageimagecolorizationget) | **GET** /image/image/colorization/ | Get list of models available for colorization
*ImageImageFaceBluringApi* | [**applyImageImageFaceBluringPost**](docs/ImageImageFaceBluringApi.md#applyimageimagefacebluringpost) | **POST** /image/image/face-bluring/ | Apply model for the face-bluring task for a given models
*ImageImageFaceBluringApi* | [**getVersionsImageImageFaceBluringGet**](docs/ImageImageFaceBluringApi.md#getversionsimageimagefacebluringget) | **GET** /image/image/face-bluring/ | Get list of models available for face-bluring
*ImageImageRestorationApi* | [**applyImageImageRestorationPost**](docs/ImageImageRestorationApi.md#applyimageimagerestorationpost) | **POST** /image/image/restoration/ | Apply model for the restoration task for a given models
*ImageImageRestorationApi* | [**getVersionsImageImageRestorationGet**](docs/ImageImageRestorationApi.md#getversionsimageimagerestorationget) | **GET** /image/image/restoration/ | Get list of models available for restoration
*ImageImageSuperResolutionApi* | [**applyImageImageSuperResolutionPost**](docs/ImageImageSuperResolutionApi.md#applyimageimagesuperresolutionpost) | **POST** /image/image/super-resolution/ | Apply model for the super-resolution task for a given models
*ImageImageSuperResolutionApi* | [**getVersionsImageImageSuperResolutionGet**](docs/ImageImageSuperResolutionApi.md#getversionsimageimagesuperresolutionget) | **GET** /image/image/super-resolution/ | Get list of models available for super-resolution
*ImageImageUncolorizationApi* | [**applyImageImageUncolorizationPost**](docs/ImageImageUncolorizationApi.md#applyimageimageuncolorizationpost) | **POST** /image/image/uncolorization/ | Apply model for the uncolorization task for a given models
*ImageImageUncolorizationApi* | [**getVersionsImageImageUncolorizationGet**](docs/ImageImageUncolorizationApi.md#getversionsimageimageuncolorizationget) | **GET** /image/image/uncolorization/ | Get list of models available for uncolorization
*ImageTextAsciifyApi* | [**applyImageTextAsciifyPost**](docs/ImageTextAsciifyApi.md#applyimagetextasciifypost) | **POST** /image/text/asciify/ | Apply model for the asciify task for a given models
*ImageTextAsciifyApi* | [**getVersionsImageTextAsciifyGet**](docs/ImageTextAsciifyApi.md#getversionsimagetextasciifyget) | **GET** /image/text/asciify/ | Get list of models available for asciify
*ImageTextOcrApi* | [**applyImageTextOcrPost**](docs/ImageTextOcrApi.md#applyimagetextocrpost) | **POST** /image/text/ocr/ | Apply model for the ocr task for a given models
*ImageTextOcrApi* | [**getVersionsImageTextOcrGet**](docs/ImageTextOcrApi.md#getversionsimagetextocrget) | **GET** /image/text/ocr/ | Get list of models available for ocr
*TextTextAutocorrectApi* | [**applyTextTextAutocorrectPost**](docs/TextTextAutocorrectApi.md#applytexttextautocorrectpost) | **POST** /text/text/autocorrect/ | Apply model for the autocorrect task for a given models
*TextTextAutocorrectApi* | [**getVersionsTextTextAutocorrectGet**](docs/TextTextAutocorrectApi.md#getversionstexttextautocorrectget) | **GET** /text/text/autocorrect/ | Get list of models available for autocorrect
*TextTextBooleanQuestionGenerationApi* | [**applyTextTextBooleanQuestionGenerationPost**](docs/TextTextBooleanQuestionGenerationApi.md#applytexttextbooleanquestiongenerationpost) | **POST** /text/text/boolean-question-generation/ | Apply model for the boolean-question-generation task for a given models
*TextTextBooleanQuestionGenerationApi* | [**getVersionsTextTextBooleanQuestionGenerationGet**](docs/TextTextBooleanQuestionGenerationApi.md#getversionstexttextbooleanquestiongenerationget) | **GET** /text/text/boolean-question-generation/ | Get list of models available for boolean-question-generation
*TextTextDependencyTrackingApi* | [**applyTextTextDependencyTrackingPost**](docs/TextTextDependencyTrackingApi.md#applytexttextdependencytrackingpost) | **POST** /text/text/dependency-tracking/ | Apply model for the dependency-tracking task for a given models
*TextTextDependencyTrackingApi* | [**getVersionsTextTextDependencyTrackingGet**](docs/TextTextDependencyTrackingApi.md#getversionstexttextdependencytrackingget) | **GET** /text/text/dependency-tracking/ | Get list of models available for dependency-tracking
*TextTextEmotionRecognitionApi* | [**applyTextTextEmotionRecognitionPost**](docs/TextTextEmotionRecognitionApi.md#applytexttextemotionrecognitionpost) | **POST** /text/text/emotion-recognition/ | Apply model for the emotion-recognition task for a given models
*TextTextEmotionRecognitionApi* | [**getVersionsTextTextEmotionRecognitionGet**](docs/TextTextEmotionRecognitionApi.md#getversionstexttextemotionrecognitionget) | **GET** /text/text/emotion-recognition/ | Get list of models available for emotion-recognition
*TextTextEntityExtractionApi* | [**applyTextTextEntityExtractionPost**](docs/TextTextEntityExtractionApi.md#applytexttextentityextractionpost) | **POST** /text/text/entity-extraction/ | Apply model for the entity-extraction task for a given models
*TextTextEntityExtractionApi* | [**getVersionsTextTextEntityExtractionGet**](docs/TextTextEntityExtractionApi.md#getversionstexttextentityextractionget) | **GET** /text/text/entity-extraction/ | Get list of models available for entity-extraction
*TextTextHateSpeechDetectionApi* | [**applyTextTextHateSpeechDetectionPost**](docs/TextTextHateSpeechDetectionApi.md#applytexttexthatespeechdetectionpost) | **POST** /text/text/hate-speech-detection/ | Apply model for the hate-speech-detection task for a given models
*TextTextHateSpeechDetectionApi* | [**getVersionsTextTextHateSpeechDetectionGet**](docs/TextTextHateSpeechDetectionApi.md#getversionstexttexthatespeechdetectionget) | **GET** /text/text/hate-speech-detection/ | Get list of models available for hate-speech-detection
*TextTextKeywordExtractionApi* | [**applyTextTextKeywordExtractionPost**](docs/TextTextKeywordExtractionApi.md#applytexttextkeywordextractionpost) | **POST** /text/text/keyword-extraction/ | Apply model for the keyword-extraction task for a given models
*TextTextKeywordExtractionApi* | [**getVersionsTextTextKeywordExtractionGet**](docs/TextTextKeywordExtractionApi.md#getversionstexttextkeywordextractionget) | **GET** /text/text/keyword-extraction/ | Get list of models available for keyword-extraction
*TextTextLanguageDetectionApi* | [**applyTextTextLanguageDetectionPost**](docs/TextTextLanguageDetectionApi.md#applytexttextlanguagedetectionpost) | **POST** /text/text/language-detection/ | Apply model for the language-detection task for a given models
*TextTextLanguageDetectionApi* | [**getVersionsTextTextLanguageDetectionGet**](docs/TextTextLanguageDetectionApi.md#getversionstexttextlanguagedetectionget) | **GET** /text/text/language-detection/ | Get list of models available for language-detection
*TextTextLanguageGenerationApi* | [**applyTextTextLanguageGenerationPost**](docs/TextTextLanguageGenerationApi.md#applytexttextlanguagegenerationpost) | **POST** /text/text/language-generation/ | Apply model for the language-generation task for a given models
*TextTextLanguageGenerationApi* | [**getVersionsTextTextLanguageGenerationGet**](docs/TextTextLanguageGenerationApi.md#getversionstexttextlanguagegenerationget) | **GET** /text/text/language-generation/ | Get list of models available for language-generation
*TextTextLemmatizationApi* | [**applyTextTextLemmatizationPost**](docs/TextTextLemmatizationApi.md#applytexttextlemmatizationpost) | **POST** /text/text/lemmatization/ | Apply model for the lemmatization task for a given models
*TextTextLemmatizationApi* | [**getVersionsTextTextLemmatizationGet**](docs/TextTextLemmatizationApi.md#getversionstexttextlemmatizationget) | **GET** /text/text/lemmatization/ | Get list of models available for lemmatization
*TextTextNamedEntityRecognitionApi* | [**applyTextTextNamedEntityRecognitionPost**](docs/TextTextNamedEntityRecognitionApi.md#applytexttextnamedentityrecognitionpost) | **POST** /text/text/named-entity-recognition/ | Apply model for the named-entity-recognition task for a given models
*TextTextNamedEntityRecognitionApi* | [**getVersionsTextTextNamedEntityRecognitionGet**](docs/TextTextNamedEntityRecognitionApi.md#getversionstexttextnamedentityrecognitionget) | **GET** /text/text/named-entity-recognition/ | Get list of models available for named-entity-recognition
*TextTextNextSentencePredictionApi* | [**applyTextTextNextSentencePredictionPost**](docs/TextTextNextSentencePredictionApi.md#applytexttextnextsentencepredictionpost) | **POST** /text/text/next-sentence-prediction/ | Apply model for the next-sentence-prediction task for a given models
*TextTextNextSentencePredictionApi* | [**getVersionsTextTextNextSentencePredictionGet**](docs/TextTextNextSentencePredictionApi.md#getversionstexttextnextsentencepredictionget) | **GET** /text/text/next-sentence-prediction/ | Get list of models available for next-sentence-prediction
*TextTextNextWordPredictionApi* | [**applyTextTextNextWordPredictionPost**](docs/TextTextNextWordPredictionApi.md#applytexttextnextwordpredictionpost) | **POST** /text/text/next-word-prediction/ | Apply model for the next-word-prediction task for a given models
*TextTextNextWordPredictionApi* | [**getVersionsTextTextNextWordPredictionGet**](docs/TextTextNextWordPredictionApi.md#getversionstexttextnextwordpredictionget) | **GET** /text/text/next-word-prediction/ | Get list of models available for next-word-prediction
*TextTextPluralApi* | [**applyTextTextPluralPost**](docs/TextTextPluralApi.md#applytexttextpluralpost) | **POST** /text/text/plural/ | Apply model for the plural task for a given models
*TextTextPluralApi* | [**getVersionsTextTextPluralGet**](docs/TextTextPluralApi.md#getversionstexttextpluralget) | **GET** /text/text/plural/ | Get list of models available for plural
*TextTextProgrammingLanguageGenerationApi* | [**applyTextTextProgrammingLanguageGenerationPost**](docs/TextTextProgrammingLanguageGenerationApi.md#applytexttextprogramminglanguagegenerationpost) | **POST** /text/text/programming-language-generation/ | Apply model for the programming-language-generation task for a given models
*TextTextProgrammingLanguageGenerationApi* | [**getVersionsTextTextProgrammingLanguageGenerationGet**](docs/TextTextProgrammingLanguageGenerationApi.md#getversionstexttextprogramminglanguagegenerationget) | **GET** /text/text/programming-language-generation/ | Get list of models available for programming-language-generation
*TextTextProgrammingLanguageIdentificationApi* | [**applyTextTextProgrammingLanguageIdentificationPost**](docs/TextTextProgrammingLanguageIdentificationApi.md#applytexttextprogramminglanguageidentificationpost) | **POST** /text/text/programming-language-identification/ | Apply model for the programming-language-identification task for a given models
*TextTextProgrammingLanguageIdentificationApi* | [**getVersionsTextTextProgrammingLanguageIdentificationGet**](docs/TextTextProgrammingLanguageIdentificationApi.md#getversionstexttextprogramminglanguageidentificationget) | **GET** /text/text/programming-language-identification/ | Get list of models available for programming-language-identification
*TextTextQuestionAnsweringApi* | [**applyTextTextQuestionAnsweringPost**](docs/TextTextQuestionAnsweringApi.md#applytexttextquestionansweringpost) | **POST** /text/text/question-answering/ | Apply model for the question-answering task for a given models
*TextTextQuestionAnsweringApi* | [**getVersionsTextTextQuestionAnsweringGet**](docs/TextTextQuestionAnsweringApi.md#getversionstexttextquestionansweringget) | **GET** /text/text/question-answering/ | Get list of models available for question-answering
*TextTextSentencePairModelingApi* | [**applyTextTextSentencePairModelingPost**](docs/TextTextSentencePairModelingApi.md#applytexttextsentencepairmodelingpost) | **POST** /text/text/sentence-pair-modeling/ | Apply model for the sentence-pair-modeling task for a given models
*TextTextSentencePairModelingApi* | [**getVersionsTextTextSentencePairModelingGet**](docs/TextTextSentencePairModelingApi.md#getversionstexttextsentencepairmodelingget) | **GET** /text/text/sentence-pair-modeling/ | Get list of models available for sentence-pair-modeling
*TextTextSentenceParaphraserApi* | [**applyTextTextSentenceParaphraserPost**](docs/TextTextSentenceParaphraserApi.md#applytexttextsentenceparaphraserpost) | **POST** /text/text/sentence-paraphraser/ | Apply model for the sentence-paraphraser task for a given models
*TextTextSentenceParaphraserApi* | [**getVersionsTextTextSentenceParaphraserGet**](docs/TextTextSentenceParaphraserApi.md#getversionstexttextsentenceparaphraserget) | **GET** /text/text/sentence-paraphraser/ | Get list of models available for sentence-paraphraser
*TextTextSentimentAnalysisApi* | [**applyTextTextSentimentAnalysisPost**](docs/TextTextSentimentAnalysisApi.md#applytexttextsentimentanalysispost) | **POST** /text/text/sentiment-analysis/ | Apply model for the sentiment-analysis task for a given models
*TextTextSentimentAnalysisApi* | [**getVersionsTextTextSentimentAnalysisGet**](docs/TextTextSentimentAnalysisApi.md#getversionstexttextsentimentanalysisget) | **GET** /text/text/sentiment-analysis/ | Get list of models available for sentiment-analysis
*TextTextSimilarityApi* | [**applyTextTextSimilarityPost**](docs/TextTextSimilarityApi.md#applytexttextsimilaritypost) | **POST** /text/text/similarity/ | Apply model for the similarity task for a given models
*TextTextSimilarityApi* | [**getVersionsTextTextSimilarityGet**](docs/TextTextSimilarityApi.md#getversionstexttextsimilarityget) | **GET** /text/text/similarity/ | Get list of models available for similarity
*TextTextSummarizationApi* | [**applyTextTextSummarizationPost**](docs/TextTextSummarizationApi.md#applytexttextsummarizationpost) | **POST** /text/text/summarization/ | Apply model for the summarization task for a given models
*TextTextSummarizationApi* | [**getVersionsTextTextSummarizationGet**](docs/TextTextSummarizationApi.md#getversionstexttextsummarizationget) | **GET** /text/text/summarization/ | Get list of models available for summarization
*TextTextTranslationApi* | [**applyTextTextTranslationPost**](docs/TextTextTranslationApi.md#applytexttexttranslationpost) | **POST** /text/text/translation/ | Apply model for the translation task for a given models
*TextTextTranslationApi* | [**getVersionsTextTextTranslationGet**](docs/TextTextTranslationApi.md#getversionstexttexttranslationget) | **GET** /text/text/translation/ | Get list of models available for translation
*TextTextTransliterationApi* | [**applyTextTextTransliterationPost**](docs/TextTextTransliterationApi.md#applytexttexttransliterationpost) | **POST** /text/text/transliteration/ | Apply model for the transliteration task for a given models
*TextTextTransliterationApi* | [**getVersionsTextTextTransliterationGet**](docs/TextTextTransliterationApi.md#getversionstexttexttransliterationget) | **GET** /text/text/transliteration/ | Get list of models available for transliteration
*TextTextWordAlignmentApi* | [**applyTextTextWordAlignmentPost**](docs/TextTextWordAlignmentApi.md#applytexttextwordalignmentpost) | **POST** /text/text/word-alignment/ | Apply model for the word-alignment task for a given models
*TextTextWordAlignmentApi* | [**getVersionsTextTextWordAlignmentGet**](docs/TextTextWordAlignmentApi.md#getversionstexttextwordalignmentget) | **GET** /text/text/word-alignment/ | Get list of models available for word-alignment
*VideoVideoFrameInterpolationApi* | [**applyVideoVideoFrameInterpolationPost**](docs/VideoVideoFrameInterpolationApi.md#applyvideovideoframeinterpolationpost) | **POST** /video/video/frame-interpolation/ | Apply model for the frame-interpolation task for a given models
*VideoVideoFrameInterpolationApi* | [**getVersionsVideoVideoFrameInterpolationGet**](docs/VideoVideoFrameInterpolationApi.md#getversionsvideovideoframeinterpolationget) | **GET** /video/video/frame-interpolation/ | Get list of models available for frame-interpolation


## Documentation For Models

 - [BodyApplyImageImageBackgroundRemovalPost](docs/BodyApplyImageImageBackgroundRemovalPost.md)
 - [BodyApplyImageImageColorizationPost](docs/BodyApplyImageImageColorizationPost.md)
 - [BodyApplyImageImageFaceBluringPost](docs/BodyApplyImageImageFaceBluringPost.md)
 - [BodyApplyImageImageRestorationPost](docs/BodyApplyImageImageRestorationPost.md)
 - [BodyApplyImageImageSuperResolutionPost](docs/BodyApplyImageImageSuperResolutionPost.md)
 - [BodyApplyImageImageUncolorizationPost](docs/BodyApplyImageImageUncolorizationPost.md)
 - [BodyApplyImageTextAsciifyPost](docs/BodyApplyImageTextAsciifyPost.md)
 - [BodyApplyImageTextOcrPost](docs/BodyApplyImageTextOcrPost.md)
 - [BodyApplyVideoVideoFrameInterpolationPost](docs/BodyApplyVideoVideoFrameInterpolationPost.md)
 - [HTTPValidationError](docs/HTTPValidationError.md)
 - [ValidationError](docs/ValidationError.md)


## Documentation For Authorization

 All endpoints do not require authorization.

