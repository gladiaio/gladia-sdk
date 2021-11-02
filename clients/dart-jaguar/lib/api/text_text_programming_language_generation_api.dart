import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_programming_language_generation_api.jretro.dart';

@GenApiClient()
class TextTextProgrammingLanguageGenerationApi extends ApiClient with _$TextTextProgrammingLanguageGenerationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextProgrammingLanguageGenerationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the programming-language-generation task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/programming-language-generation/")
    Future<Object> applyTextTextProgrammingLanguageGenerationPost(
        
            @QueryParam("code_snippet") String codeSnippet, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextProgrammingLanguageGenerationPost(
        
        codeSnippet, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for programming-language-generation
    ///
    /// 
    @GetReq(path: "/text/text/programming-language-generation/")
    Future<Object> getVersionsTextTextProgrammingLanguageGenerationGet(
        ) {
        return super.getVersionsTextTextProgrammingLanguageGenerationGet(

        ).timeout(timeout);
    }


}
