library openapi.api;

import 'package:http/io_client.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:openapi/api/image_image_background_removal_api.dart';
import 'package:openapi/api/image_image_colorization_api.dart';
import 'package:openapi/api/image_image_face_bluring_api.dart';
import 'package:openapi/api/image_image_super_resolution_api.dart';
import 'package:openapi/api/image_image_uncolorization_api.dart';
import 'package:openapi/api/image_text_asciify_api.dart';
import 'package:openapi/api/image_text_ocr_api.dart';
import 'package:openapi/api/text_text_autocorrect_api.dart';
import 'package:openapi/api/text_text_emotion_recognition_api.dart';
import 'package:openapi/api/text_text_entity_extraction_api.dart';
import 'package:openapi/api/text_text_hate_speech_detection_api.dart';
import 'package:openapi/api/text_text_keyword_extraction_api.dart';
import 'package:openapi/api/text_text_language_detection_api.dart';
import 'package:openapi/api/text_text_language_generation_api.dart';
import 'package:openapi/api/text_text_lemmatization_api.dart';
import 'package:openapi/api/text_text_named_entity_recognition_api.dart';
import 'package:openapi/api/text_text_next_sentence_prediction_api.dart';
import 'package:openapi/api/text_text_next_word_prediction_api.dart';
import 'package:openapi/api/text_text_plural_api.dart';
import 'package:openapi/api/text_text_programming_language_generation_api.dart';
import 'package:openapi/api/text_text_question_answering_api.dart';
import 'package:openapi/api/text_text_sentence_paraphraser_api.dart';
import 'package:openapi/api/text_text_sentiment_analysis_api.dart';
import 'package:openapi/api/text_text_similarity_api.dart';
import 'package:openapi/api/text_text_word_alignment_api.dart';

import 'package:openapi/model/body_apply_image_image_background_removal_post.dart';
import 'package:openapi/model/body_apply_image_image_colorization_post.dart';
import 'package:openapi/model/body_apply_image_image_face_bluring_post.dart';
import 'package:openapi/model/body_apply_image_image_super_resolution_post.dart';
import 'package:openapi/model/body_apply_image_image_uncolorization_post.dart';
import 'package:openapi/model/body_apply_image_text_asciify_post.dart';
import 'package:openapi/model/body_apply_image_text_ocr_post.dart';
import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/validation_error.dart';



final _jsonJaguarRepo = JsonRepo()
..add(BodyApplyImageImageBackgroundRemovalPostSerializer())
..add(BodyApplyImageImageColorizationPostSerializer())
..add(BodyApplyImageImageFaceBluringPostSerializer())
..add(BodyApplyImageImageSuperResolutionPostSerializer())
..add(BodyApplyImageImageUncolorizationPostSerializer())
..add(BodyApplyImageTextAsciifyPostSerializer())
..add(BodyApplyImageTextOcrPostSerializer())
..add(HTTPValidationErrorSerializer())
..add(ValidationErrorSerializer())
;
final Map<String, CodecRepo> _converters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class JaguarApiGen {
    List<Interceptor> interceptors;
    String basePath = "http://localhost";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    JaguarApiGen({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? IOClient());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get ImageImageBackgroundRemovalApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageImageBackgroundRemovalApi getImageImageBackgroundRemovalApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageImageBackgroundRemovalApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ImageImageColorizationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageImageColorizationApi getImageImageColorizationApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageImageColorizationApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ImageImageFaceBluringApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageImageFaceBluringApi getImageImageFaceBluringApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageImageFaceBluringApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ImageImageSuperResolutionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageImageSuperResolutionApi getImageImageSuperResolutionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageImageSuperResolutionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ImageImageUncolorizationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageImageUncolorizationApi getImageImageUncolorizationApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageImageUncolorizationApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ImageTextAsciifyApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageTextAsciifyApi getImageTextAsciifyApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageTextAsciifyApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ImageTextOcrApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ImageTextOcrApi getImageTextOcrApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return ImageTextOcrApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextAutocorrectApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextAutocorrectApi getTextTextAutocorrectApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextAutocorrectApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextEmotionRecognitionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextEmotionRecognitionApi getTextTextEmotionRecognitionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextEmotionRecognitionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextEntityExtractionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextEntityExtractionApi getTextTextEntityExtractionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextEntityExtractionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextHateSpeechDetectionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextHateSpeechDetectionApi getTextTextHateSpeechDetectionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextHateSpeechDetectionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextKeywordExtractionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextKeywordExtractionApi getTextTextKeywordExtractionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextKeywordExtractionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextLanguageDetectionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextLanguageDetectionApi getTextTextLanguageDetectionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextLanguageDetectionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextLanguageGenerationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextLanguageGenerationApi getTextTextLanguageGenerationApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextLanguageGenerationApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextLemmatizationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextLemmatizationApi getTextTextLemmatizationApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextLemmatizationApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextNamedEntityRecognitionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextNamedEntityRecognitionApi getTextTextNamedEntityRecognitionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextNamedEntityRecognitionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextNextSentencePredictionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextNextSentencePredictionApi getTextTextNextSentencePredictionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextNextSentencePredictionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextNextWordPredictionApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextNextWordPredictionApi getTextTextNextWordPredictionApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextNextWordPredictionApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextPluralApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextPluralApi getTextTextPluralApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextPluralApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextProgrammingLanguageGenerationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextProgrammingLanguageGenerationApi getTextTextProgrammingLanguageGenerationApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextProgrammingLanguageGenerationApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextQuestionAnsweringApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextQuestionAnsweringApi getTextTextQuestionAnsweringApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextQuestionAnsweringApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextSentenceParaphraserApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextSentenceParaphraserApi getTextTextSentenceParaphraserApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextSentenceParaphraserApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextSentimentAnalysisApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextSentimentAnalysisApi getTextTextSentimentAnalysisApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextSentimentAnalysisApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextSimilarityApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextSimilarityApi getTextTextSimilarityApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextSimilarityApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TextTextWordAlignmentApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TextTextWordAlignmentApi getTextTextWordAlignmentApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = _converters;
        }
        return TextTextWordAlignmentApi(base: base, converters: converters, timeout: timeout);
    }

    
}