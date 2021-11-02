import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_similarity_api.jretro.dart';

@GenApiClient()
class TextTextSimilarityApi extends ApiClient with _$TextTextSimilarityApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextSimilarityApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the similarity task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/similarity/")
    Future<Object> applyTextTextSimilarityPost(
        
            @QueryParam("sentence_1") String sentence1, 
        
            @QueryParam("sentence_2") String sentence2, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextSimilarityPost(
        
        sentence1, 
        
        sentence2, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for similarity
    ///
    /// 
    @GetReq(path: "/text/text/similarity/")
    Future<Object> getVersionsTextTextSimilarityGet(
        ) {
        return super.getVersionsTextTextSimilarityGet(

        ).timeout(timeout);
    }


}
