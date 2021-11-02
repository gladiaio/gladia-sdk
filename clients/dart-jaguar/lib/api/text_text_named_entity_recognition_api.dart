import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_named_entity_recognition_api.jretro.dart';

@GenApiClient()
class TextTextNamedEntityRecognitionApi extends ApiClient with _$TextTextNamedEntityRecognitionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextNamedEntityRecognitionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the named-entity-recognition task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/named-entity-recognition/")
    Future<Object> applyTextTextNamedEntityRecognitionPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextNamedEntityRecognitionPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for named-entity-recognition
    ///
    /// 
    @GetReq(path: "/text/text/named-entity-recognition/")
    Future<Object> getVersionsTextTextNamedEntityRecognitionGet(
        ) {
        return super.getVersionsTextTextNamedEntityRecognitionGet(

        ).timeout(timeout);
    }


}
