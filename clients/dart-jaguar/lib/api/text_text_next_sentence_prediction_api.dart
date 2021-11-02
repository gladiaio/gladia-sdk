import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_next_sentence_prediction_api.jretro.dart';

@GenApiClient()
class TextTextNextSentencePredictionApi extends ApiClient with _$TextTextNextSentencePredictionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextNextSentencePredictionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the next-sentence-prediction task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/next-sentence-prediction/")
    Future<Object> applyTextTextNextSentencePredictionPost(
        
            @QueryParam("sentence_1") String sentence1, 
        
            @QueryParam("sentence_2") String sentence2, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextNextSentencePredictionPost(
        
        sentence1, 
        
        sentence2, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for next-sentence-prediction
    ///
    /// 
    @GetReq(path: "/text/text/next-sentence-prediction/")
    Future<Object> getVersionsTextTextNextSentencePredictionGet(
        ) {
        return super.getVersionsTextTextNextSentencePredictionGet(

        ).timeout(timeout);
    }


}
