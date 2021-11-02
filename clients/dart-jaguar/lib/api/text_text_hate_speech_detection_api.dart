import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_hate_speech_detection_api.jretro.dart';

@GenApiClient()
class TextTextHateSpeechDetectionApi extends ApiClient with _$TextTextHateSpeechDetectionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextHateSpeechDetectionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the hate-speech-detection task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/hate-speech-detection/")
    Future<Object> applyTextTextHateSpeechDetectionPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextHateSpeechDetectionPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for hate-speech-detection
    ///
    /// 
    @GetReq(path: "/text/text/hate-speech-detection/")
    Future<Object> getVersionsTextTextHateSpeechDetectionGet(
        ) {
        return super.getVersionsTextTextHateSpeechDetectionGet(

        ).timeout(timeout);
    }


}
