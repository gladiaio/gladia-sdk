import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_sentence_pair_modeling_api.jretro.dart';

@GenApiClient()
class TextTextSentencePairModelingApi extends ApiClient with _$TextTextSentencePairModelingApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextSentencePairModelingApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the sentence-pair-modeling task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/sentence-pair-modeling/")
    Future<Object> applyTextTextSentencePairModelingPost(
        
            @QueryParam("sentence") String sentence, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextSentencePairModelingPost(
        
        sentence, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for sentence-pair-modeling
    ///
    /// 
    @GetReq(path: "/text/text/sentence-pair-modeling/")
    Future<Object> getVersionsTextTextSentencePairModelingGet(
        ) {
        return super.getVersionsTextTextSentencePairModelingGet(

        ).timeout(timeout);
    }


}
