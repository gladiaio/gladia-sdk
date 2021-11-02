import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_next_word_prediction_api.jretro.dart';

@GenApiClient()
class TextTextNextWordPredictionApi extends ApiClient with _$TextTextNextWordPredictionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextNextWordPredictionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the next-word-prediction task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/next-word-prediction/")
    Future<Object> applyTextTextNextWordPredictionPost(
        
            @QueryParam("sentence") String sentence, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextNextWordPredictionPost(
        
        sentence, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for next-word-prediction
    ///
    /// 
    @GetReq(path: "/text/text/next-word-prediction/")
    Future<Object> getVersionsTextTextNextWordPredictionGet(
        ) {
        return super.getVersionsTextTextNextWordPredictionGet(

        ).timeout(timeout);
    }


}
