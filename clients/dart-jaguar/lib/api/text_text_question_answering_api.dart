import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_question_answering_api.jretro.dart';

@GenApiClient()
class TextTextQuestionAnsweringApi extends ApiClient with _$TextTextQuestionAnsweringApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextQuestionAnsweringApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the question-answering task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/question-answering/")
    Future<Object> applyTextTextQuestionAnsweringPost(
        
            @QueryParam("context") String context, 
        
            @QueryParam("question") String question, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextQuestionAnsweringPost(
        
        context, 
        
        question, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for question-answering
    ///
    /// 
    @GetReq(path: "/text/text/question-answering/")
    Future<Object> getVersionsTextTextQuestionAnsweringGet(
        ) {
        return super.getVersionsTextTextQuestionAnsweringGet(

        ).timeout(timeout);
    }


}
