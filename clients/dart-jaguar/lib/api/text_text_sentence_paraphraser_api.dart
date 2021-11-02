import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_sentence_paraphraser_api.jretro.dart';

@GenApiClient()
class TextTextSentenceParaphraserApi extends ApiClient with _$TextTextSentenceParaphraserApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextSentenceParaphraserApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the sentence-paraphraser task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/sentence-paraphraser/")
    Future<Object> applyTextTextSentenceParaphraserPost(
        
            @QueryParam("context") String context, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextSentenceParaphraserPost(
        
        context, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for sentence-paraphraser
    ///
    /// 
    @GetReq(path: "/text/text/sentence-paraphraser/")
    Future<Object> getVersionsTextTextSentenceParaphraserGet(
        ) {
        return super.getVersionsTextTextSentenceParaphraserGet(

        ).timeout(timeout);
    }


}
