# Documentation for FastAPI 0.1.0 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in FastAPI Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to http://localhosthttp://localhost

### ImageImageBackgroundRemovalManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageImageBackgroundRemovalPostSync* | *POST* /image/image/background-removal/ | Apply model for the background-removal task for a given models.
*applyImageImageBackgroundRemovalPostASync* | *POST* /image/image/background-removal/ | Apply model for the background-removal task for a given models.
*getVersionsImageImageBackgroundRemovalGetSync* | *GET* /image/image/background-removal/ | Get list of models available for background-removal.
*getVersionsImageImageBackgroundRemovalGetASync* | *GET* /image/image/background-removal/ | Get list of models available for background-removal.

### ImageImageColorizationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageImageColorizationPostSync* | *POST* /image/image/colorization/ | Apply model for the colorization task for a given models.
*applyImageImageColorizationPostASync* | *POST* /image/image/colorization/ | Apply model for the colorization task for a given models.
*getVersionsImageImageColorizationGetSync* | *GET* /image/image/colorization/ | Get list of models available for colorization.
*getVersionsImageImageColorizationGetASync* | *GET* /image/image/colorization/ | Get list of models available for colorization.

### ImageImageFaceBluringManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageImageFaceBluringPostSync* | *POST* /image/image/face-bluring/ | Apply model for the face-bluring task for a given models.
*applyImageImageFaceBluringPostASync* | *POST* /image/image/face-bluring/ | Apply model for the face-bluring task for a given models.
*getVersionsImageImageFaceBluringGetSync* | *GET* /image/image/face-bluring/ | Get list of models available for face-bluring.
*getVersionsImageImageFaceBluringGetASync* | *GET* /image/image/face-bluring/ | Get list of models available for face-bluring.

### ImageImageRestorationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageImageRestorationPostSync* | *POST* /image/image/restoration/ | Apply model for the restoration task for a given models.
*applyImageImageRestorationPostASync* | *POST* /image/image/restoration/ | Apply model for the restoration task for a given models.
*getVersionsImageImageRestorationGetSync* | *GET* /image/image/restoration/ | Get list of models available for restoration.
*getVersionsImageImageRestorationGetASync* | *GET* /image/image/restoration/ | Get list of models available for restoration.

### ImageImageSuperResolutionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageImageSuperResolutionPostSync* | *POST* /image/image/super-resolution/ | Apply model for the super-resolution task for a given models.
*applyImageImageSuperResolutionPostASync* | *POST* /image/image/super-resolution/ | Apply model for the super-resolution task for a given models.
*getVersionsImageImageSuperResolutionGetSync* | *GET* /image/image/super-resolution/ | Get list of models available for super-resolution.
*getVersionsImageImageSuperResolutionGetASync* | *GET* /image/image/super-resolution/ | Get list of models available for super-resolution.

### ImageImageUncolorizationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageImageUncolorizationPostSync* | *POST* /image/image/uncolorization/ | Apply model for the uncolorization task for a given models.
*applyImageImageUncolorizationPostASync* | *POST* /image/image/uncolorization/ | Apply model for the uncolorization task for a given models.
*getVersionsImageImageUncolorizationGetSync* | *GET* /image/image/uncolorization/ | Get list of models available for uncolorization.
*getVersionsImageImageUncolorizationGetASync* | *GET* /image/image/uncolorization/ | Get list of models available for uncolorization.

### ImageTextAsciifyManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageTextAsciifyPostSync* | *POST* /image/text/asciify/ | Apply model for the asciify task for a given models.
*applyImageTextAsciifyPostASync* | *POST* /image/text/asciify/ | Apply model for the asciify task for a given models.
*getVersionsImageTextAsciifyGetSync* | *GET* /image/text/asciify/ | Get list of models available for asciify.
*getVersionsImageTextAsciifyGetASync* | *GET* /image/text/asciify/ | Get list of models available for asciify.

### ImageTextOcrManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyImageTextOcrPostSync* | *POST* /image/text/ocr/ | Apply model for the ocr task for a given models.
*applyImageTextOcrPostASync* | *POST* /image/text/ocr/ | Apply model for the ocr task for a given models.
*getVersionsImageTextOcrGetSync* | *GET* /image/text/ocr/ | Get list of models available for ocr.
*getVersionsImageTextOcrGetASync* | *GET* /image/text/ocr/ | Get list of models available for ocr.

### TextTextAutocorrectManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextAutocorrectPostSync* | *POST* /text/text/autocorrect/ | Apply model for the autocorrect task for a given models.
*applyTextTextAutocorrectPostASync* | *POST* /text/text/autocorrect/ | Apply model for the autocorrect task for a given models.
*getVersionsTextTextAutocorrectGetSync* | *GET* /text/text/autocorrect/ | Get list of models available for autocorrect.
*getVersionsTextTextAutocorrectGetASync* | *GET* /text/text/autocorrect/ | Get list of models available for autocorrect.

### TextTextBooleanQuestionGenerationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextBooleanQuestionGenerationPostSync* | *POST* /text/text/boolean-question-generation/ | Apply model for the boolean-question-generation task for a given models.
*applyTextTextBooleanQuestionGenerationPostASync* | *POST* /text/text/boolean-question-generation/ | Apply model for the boolean-question-generation task for a given models.
*getVersionsTextTextBooleanQuestionGenerationGetSync* | *GET* /text/text/boolean-question-generation/ | Get list of models available for boolean-question-generation.
*getVersionsTextTextBooleanQuestionGenerationGetASync* | *GET* /text/text/boolean-question-generation/ | Get list of models available for boolean-question-generation.

### TextTextDependencyTrackingManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextDependencyTrackingPostSync* | *POST* /text/text/dependency-tracking/ | Apply model for the dependency-tracking task for a given models.
*applyTextTextDependencyTrackingPostASync* | *POST* /text/text/dependency-tracking/ | Apply model for the dependency-tracking task for a given models.
*getVersionsTextTextDependencyTrackingGetSync* | *GET* /text/text/dependency-tracking/ | Get list of models available for dependency-tracking.
*getVersionsTextTextDependencyTrackingGetASync* | *GET* /text/text/dependency-tracking/ | Get list of models available for dependency-tracking.

### TextTextEmotionRecognitionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextEmotionRecognitionPostSync* | *POST* /text/text/emotion-recognition/ | Apply model for the emotion-recognition task for a given models.
*applyTextTextEmotionRecognitionPostASync* | *POST* /text/text/emotion-recognition/ | Apply model for the emotion-recognition task for a given models.
*getVersionsTextTextEmotionRecognitionGetSync* | *GET* /text/text/emotion-recognition/ | Get list of models available for emotion-recognition.
*getVersionsTextTextEmotionRecognitionGetASync* | *GET* /text/text/emotion-recognition/ | Get list of models available for emotion-recognition.

### TextTextEntityExtractionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextEntityExtractionPostSync* | *POST* /text/text/entity-extraction/ | Apply model for the entity-extraction task for a given models.
*applyTextTextEntityExtractionPostASync* | *POST* /text/text/entity-extraction/ | Apply model for the entity-extraction task for a given models.
*getVersionsTextTextEntityExtractionGetSync* | *GET* /text/text/entity-extraction/ | Get list of models available for entity-extraction.
*getVersionsTextTextEntityExtractionGetASync* | *GET* /text/text/entity-extraction/ | Get list of models available for entity-extraction.

### TextTextHateSpeechDetectionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextHateSpeechDetectionPostSync* | *POST* /text/text/hate-speech-detection/ | Apply model for the hate-speech-detection task for a given models.
*applyTextTextHateSpeechDetectionPostASync* | *POST* /text/text/hate-speech-detection/ | Apply model for the hate-speech-detection task for a given models.
*getVersionsTextTextHateSpeechDetectionGetSync* | *GET* /text/text/hate-speech-detection/ | Get list of models available for hate-speech-detection.
*getVersionsTextTextHateSpeechDetectionGetASync* | *GET* /text/text/hate-speech-detection/ | Get list of models available for hate-speech-detection.

### TextTextKeywordExtractionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextKeywordExtractionPostSync* | *POST* /text/text/keyword-extraction/ | Apply model for the keyword-extraction task for a given models.
*applyTextTextKeywordExtractionPostASync* | *POST* /text/text/keyword-extraction/ | Apply model for the keyword-extraction task for a given models.
*getVersionsTextTextKeywordExtractionGetSync* | *GET* /text/text/keyword-extraction/ | Get list of models available for keyword-extraction.
*getVersionsTextTextKeywordExtractionGetASync* | *GET* /text/text/keyword-extraction/ | Get list of models available for keyword-extraction.

### TextTextLanguageDetectionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextLanguageDetectionPostSync* | *POST* /text/text/language-detection/ | Apply model for the language-detection task for a given models.
*applyTextTextLanguageDetectionPostASync* | *POST* /text/text/language-detection/ | Apply model for the language-detection task for a given models.
*getVersionsTextTextLanguageDetectionGetSync* | *GET* /text/text/language-detection/ | Get list of models available for language-detection.
*getVersionsTextTextLanguageDetectionGetASync* | *GET* /text/text/language-detection/ | Get list of models available for language-detection.

### TextTextLanguageGenerationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextLanguageGenerationPostSync* | *POST* /text/text/language-generation/ | Apply model for the language-generation task for a given models.
*applyTextTextLanguageGenerationPostASync* | *POST* /text/text/language-generation/ | Apply model for the language-generation task for a given models.
*getVersionsTextTextLanguageGenerationGetSync* | *GET* /text/text/language-generation/ | Get list of models available for language-generation.
*getVersionsTextTextLanguageGenerationGetASync* | *GET* /text/text/language-generation/ | Get list of models available for language-generation.

### TextTextLemmatizationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextLemmatizationPostSync* | *POST* /text/text/lemmatization/ | Apply model for the lemmatization task for a given models.
*applyTextTextLemmatizationPostASync* | *POST* /text/text/lemmatization/ | Apply model for the lemmatization task for a given models.
*getVersionsTextTextLemmatizationGetSync* | *GET* /text/text/lemmatization/ | Get list of models available for lemmatization.
*getVersionsTextTextLemmatizationGetASync* | *GET* /text/text/lemmatization/ | Get list of models available for lemmatization.

### TextTextNamedEntityRecognitionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextNamedEntityRecognitionPostSync* | *POST* /text/text/named-entity-recognition/ | Apply model for the named-entity-recognition task for a given models.
*applyTextTextNamedEntityRecognitionPostASync* | *POST* /text/text/named-entity-recognition/ | Apply model for the named-entity-recognition task for a given models.
*getVersionsTextTextNamedEntityRecognitionGetSync* | *GET* /text/text/named-entity-recognition/ | Get list of models available for named-entity-recognition.
*getVersionsTextTextNamedEntityRecognitionGetASync* | *GET* /text/text/named-entity-recognition/ | Get list of models available for named-entity-recognition.

### TextTextNextSentencePredictionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextNextSentencePredictionPostSync* | *POST* /text/text/next-sentence-prediction/ | Apply model for the next-sentence-prediction task for a given models.
*applyTextTextNextSentencePredictionPostASync* | *POST* /text/text/next-sentence-prediction/ | Apply model for the next-sentence-prediction task for a given models.
*getVersionsTextTextNextSentencePredictionGetSync* | *GET* /text/text/next-sentence-prediction/ | Get list of models available for next-sentence-prediction.
*getVersionsTextTextNextSentencePredictionGetASync* | *GET* /text/text/next-sentence-prediction/ | Get list of models available for next-sentence-prediction.

### TextTextNextWordPredictionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextNextWordPredictionPostSync* | *POST* /text/text/next-word-prediction/ | Apply model for the next-word-prediction task for a given models.
*applyTextTextNextWordPredictionPostASync* | *POST* /text/text/next-word-prediction/ | Apply model for the next-word-prediction task for a given models.
*getVersionsTextTextNextWordPredictionGetSync* | *GET* /text/text/next-word-prediction/ | Get list of models available for next-word-prediction.
*getVersionsTextTextNextWordPredictionGetASync* | *GET* /text/text/next-word-prediction/ | Get list of models available for next-word-prediction.

### TextTextPluralManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextPluralPostSync* | *POST* /text/text/plural/ | Apply model for the plural task for a given models.
*applyTextTextPluralPostASync* | *POST* /text/text/plural/ | Apply model for the plural task for a given models.
*getVersionsTextTextPluralGetSync* | *GET* /text/text/plural/ | Get list of models available for plural.
*getVersionsTextTextPluralGetASync* | *GET* /text/text/plural/ | Get list of models available for plural.

### TextTextProgrammingLanguageGenerationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextProgrammingLanguageGenerationPostSync* | *POST* /text/text/programming-language-generation/ | Apply model for the programming-language-generation task for a given models.
*applyTextTextProgrammingLanguageGenerationPostASync* | *POST* /text/text/programming-language-generation/ | Apply model for the programming-language-generation task for a given models.
*getVersionsTextTextProgrammingLanguageGenerationGetSync* | *GET* /text/text/programming-language-generation/ | Get list of models available for programming-language-generation.
*getVersionsTextTextProgrammingLanguageGenerationGetASync* | *GET* /text/text/programming-language-generation/ | Get list of models available for programming-language-generation.

### TextTextProgrammingLanguageIdentificationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextProgrammingLanguageIdentificationPostSync* | *POST* /text/text/programming-language-identification/ | Apply model for the programming-language-identification task for a given models.
*applyTextTextProgrammingLanguageIdentificationPostASync* | *POST* /text/text/programming-language-identification/ | Apply model for the programming-language-identification task for a given models.
*getVersionsTextTextProgrammingLanguageIdentificationGetSync* | *GET* /text/text/programming-language-identification/ | Get list of models available for programming-language-identification.
*getVersionsTextTextProgrammingLanguageIdentificationGetASync* | *GET* /text/text/programming-language-identification/ | Get list of models available for programming-language-identification.

### TextTextQuestionAnsweringManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextQuestionAnsweringPostSync* | *POST* /text/text/question-answering/ | Apply model for the question-answering task for a given models.
*applyTextTextQuestionAnsweringPostASync* | *POST* /text/text/question-answering/ | Apply model for the question-answering task for a given models.
*getVersionsTextTextQuestionAnsweringGetSync* | *GET* /text/text/question-answering/ | Get list of models available for question-answering.
*getVersionsTextTextQuestionAnsweringGetASync* | *GET* /text/text/question-answering/ | Get list of models available for question-answering.

### TextTextSentencePairModelingManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextSentencePairModelingPostSync* | *POST* /text/text/sentence-pair-modeling/ | Apply model for the sentence-pair-modeling task for a given models.
*applyTextTextSentencePairModelingPostASync* | *POST* /text/text/sentence-pair-modeling/ | Apply model for the sentence-pair-modeling task for a given models.
*getVersionsTextTextSentencePairModelingGetSync* | *GET* /text/text/sentence-pair-modeling/ | Get list of models available for sentence-pair-modeling.
*getVersionsTextTextSentencePairModelingGetASync* | *GET* /text/text/sentence-pair-modeling/ | Get list of models available for sentence-pair-modeling.

### TextTextSentenceParaphraserManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextSentenceParaphraserPostSync* | *POST* /text/text/sentence-paraphraser/ | Apply model for the sentence-paraphraser task for a given models.
*applyTextTextSentenceParaphraserPostASync* | *POST* /text/text/sentence-paraphraser/ | Apply model for the sentence-paraphraser task for a given models.
*getVersionsTextTextSentenceParaphraserGetSync* | *GET* /text/text/sentence-paraphraser/ | Get list of models available for sentence-paraphraser.
*getVersionsTextTextSentenceParaphraserGetASync* | *GET* /text/text/sentence-paraphraser/ | Get list of models available for sentence-paraphraser.

### TextTextSentimentAnalysisManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextSentimentAnalysisPostSync* | *POST* /text/text/sentiment-analysis/ | Apply model for the sentiment-analysis task for a given models.
*applyTextTextSentimentAnalysisPostASync* | *POST* /text/text/sentiment-analysis/ | Apply model for the sentiment-analysis task for a given models.
*getVersionsTextTextSentimentAnalysisGetSync* | *GET* /text/text/sentiment-analysis/ | Get list of models available for sentiment-analysis.
*getVersionsTextTextSentimentAnalysisGetASync* | *GET* /text/text/sentiment-analysis/ | Get list of models available for sentiment-analysis.

### TextTextSimilarityManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextSimilarityPostSync* | *POST* /text/text/similarity/ | Apply model for the similarity task for a given models.
*applyTextTextSimilarityPostASync* | *POST* /text/text/similarity/ | Apply model for the similarity task for a given models.
*getVersionsTextTextSimilarityGetSync* | *GET* /text/text/similarity/ | Get list of models available for similarity.
*getVersionsTextTextSimilarityGetASync* | *GET* /text/text/similarity/ | Get list of models available for similarity.

### TextTextSummarizationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextSummarizationPostSync* | *POST* /text/text/summarization/ | Apply model for the summarization task for a given models.
*applyTextTextSummarizationPostASync* | *POST* /text/text/summarization/ | Apply model for the summarization task for a given models.
*getVersionsTextTextSummarizationGetSync* | *GET* /text/text/summarization/ | Get list of models available for summarization.
*getVersionsTextTextSummarizationGetASync* | *GET* /text/text/summarization/ | Get list of models available for summarization.

### TextTextTranslationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextTranslationPostSync* | *POST* /text/text/translation/ | Apply model for the translation task for a given models.
*applyTextTextTranslationPostASync* | *POST* /text/text/translation/ | Apply model for the translation task for a given models.
*getVersionsTextTextTranslationGetSync* | *GET* /text/text/translation/ | Get list of models available for translation.
*getVersionsTextTextTranslationGetASync* | *GET* /text/text/translation/ | Get list of models available for translation.

### TextTextTransliterationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextTransliterationPostSync* | *POST* /text/text/transliteration/ | Apply model for the transliteration task for a given models.
*applyTextTextTransliterationPostASync* | *POST* /text/text/transliteration/ | Apply model for the transliteration task for a given models.
*getVersionsTextTextTransliterationGetSync* | *GET* /text/text/transliteration/ | Get list of models available for transliteration.
*getVersionsTextTextTransliterationGetASync* | *GET* /text/text/transliteration/ | Get list of models available for transliteration.

### TextTextWordAlignmentManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyTextTextWordAlignmentPostSync* | *POST* /text/text/word-alignment/ | Apply model for the word-alignment task for a given models.
*applyTextTextWordAlignmentPostASync* | *POST* /text/text/word-alignment/ | Apply model for the word-alignment task for a given models.
*getVersionsTextTextWordAlignmentGetSync* | *GET* /text/text/word-alignment/ | Get list of models available for word-alignment.
*getVersionsTextTextWordAlignmentGetASync* | *GET* /text/text/word-alignment/ | Get list of models available for word-alignment.

### VideoVideoFrameInterpolationManager
Method | HTTP request | Description
------------- | ------------- | -------------
*applyVideoVideoFrameInterpolationPostSync* | *POST* /video/video/frame-interpolation/ | Apply model for the frame-interpolation task for a given models.
*applyVideoVideoFrameInterpolationPostASync* | *POST* /video/video/frame-interpolation/ | Apply model for the frame-interpolation task for a given models.
*getVersionsVideoVideoFrameInterpolationGetSync* | *GET* /video/video/frame-interpolation/ | Get list of models available for frame-interpolation.
*getVersionsVideoVideoFrameInterpolationGetASync* | *GET* /video/video/frame-interpolation/ | Get list of models available for frame-interpolation.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Body_apply_image_image_background_removal__post* | 
 *Body_apply_image_image_colorization__post* | 
 *Body_apply_image_image_face_bluring__post* | 
 *Body_apply_image_image_restoration__post* | 
 *Body_apply_image_image_super_resolution__post* | 
 *Body_apply_image_image_uncolorization__post* | 
 *Body_apply_image_text_asciify__post* | 
 *Body_apply_image_text_ocr__post* | 
 *Body_apply_video_video_frame_interpolation__post* | 
 *HTTPValidationError* | 
 *ValidationError* | 

