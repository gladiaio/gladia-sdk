import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_translation_api.jretro.dart';

@GenApiClient()
class TextTextTranslationApi extends ApiClient with _$TextTextTranslationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextTranslationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the translation task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/translation/")
    Future<Object> applyTextTextTranslationPost(
        
            @QueryParam("input_string") String inputString, 
        
            @QueryParam("source_language") String sourceLanguage, 
        
            @QueryParam("target_language") String targetLanguage, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextTranslationPost(
        
        inputString, 
        
        sourceLanguage, 
        
        targetLanguage, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for translation
    ///
    /// 
    @GetReq(path: "/text/text/translation/")
    Future<Object> getVersionsTextTextTranslationGet(
        ) {
        return super.getVersionsTextTextTranslationGet(

        ).timeout(timeout);
    }


}
