import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_word_alignment_api.jretro.dart';

@GenApiClient()
class TextTextWordAlignmentApi extends ApiClient with _$TextTextWordAlignmentApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextWordAlignmentApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the word-alignment task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/word-alignment/")
    Future<Object> applyTextTextWordAlignmentPost(
        
            @QueryParam("input_string_language_1") String inputStringLanguage1, 
        
            @QueryParam("input_string_language_2") String inputStringLanguage2, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextWordAlignmentPost(
        
        inputStringLanguage1, 
        
        inputStringLanguage2, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for word-alignment
    ///
    /// 
    @GetReq(path: "/text/text/word-alignment/")
    Future<Object> getVersionsTextTextWordAlignmentGet(
        ) {
        return super.getVersionsTextTextWordAlignmentGet(

        ).timeout(timeout);
    }


}
