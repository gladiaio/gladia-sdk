import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_boolean_question_generation_api.jretro.dart';

@GenApiClient()
class TextTextBooleanQuestionGenerationApi extends ApiClient with _$TextTextBooleanQuestionGenerationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextBooleanQuestionGenerationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the boolean-question-generation task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/boolean-question-generation/")
    Future<Object> applyTextTextBooleanQuestionGenerationPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextBooleanQuestionGenerationPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for boolean-question-generation
    ///
    /// 
    @GetReq(path: "/text/text/boolean-question-generation/")
    Future<Object> getVersionsTextTextBooleanQuestionGenerationGet(
        ) {
        return super.getVersionsTextTextBooleanQuestionGenerationGet(

        ).timeout(timeout);
    }


}
