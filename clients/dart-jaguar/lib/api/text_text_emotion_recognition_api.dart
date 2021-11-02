import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_emotion_recognition_api.jretro.dart';

@GenApiClient()
class TextTextEmotionRecognitionApi extends ApiClient with _$TextTextEmotionRecognitionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextEmotionRecognitionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the emotion-recognition task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/emotion-recognition/")
    Future<Object> applyTextTextEmotionRecognitionPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextEmotionRecognitionPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for emotion-recognition
    ///
    /// 
    @GetReq(path: "/text/text/emotion-recognition/")
    Future<Object> getVersionsTextTextEmotionRecognitionGet(
        ) {
        return super.getVersionsTextTextEmotionRecognitionGet(

        ).timeout(timeout);
    }


}
