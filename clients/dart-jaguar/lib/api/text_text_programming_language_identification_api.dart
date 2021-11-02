import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_programming_language_identification_api.jretro.dart';

@GenApiClient()
class TextTextProgrammingLanguageIdentificationApi extends ApiClient with _$TextTextProgrammingLanguageIdentificationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextProgrammingLanguageIdentificationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the programming-language-identification task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/programming-language-identification/")
    Future<Object> applyTextTextProgrammingLanguageIdentificationPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextProgrammingLanguageIdentificationPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for programming-language-identification
    ///
    /// 
    @GetReq(path: "/text/text/programming-language-identification/")
    Future<Object> getVersionsTextTextProgrammingLanguageIdentificationGet(
        ) {
        return super.getVersionsTextTextProgrammingLanguageIdentificationGet(

        ).timeout(timeout);
    }


}
