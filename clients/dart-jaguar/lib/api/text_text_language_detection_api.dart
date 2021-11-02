import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_language_detection_api.jretro.dart';

@GenApiClient()
class TextTextLanguageDetectionApi extends ApiClient with _$TextTextLanguageDetectionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextLanguageDetectionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the language-detection task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/language-detection/")
    Future<Object> applyTextTextLanguageDetectionPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextLanguageDetectionPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for language-detection
    ///
    /// 
    @GetReq(path: "/text/text/language-detection/")
    Future<Object> getVersionsTextTextLanguageDetectionGet(
        ) {
        return super.getVersionsTextTextLanguageDetectionGet(

        ).timeout(timeout);
    }


}
