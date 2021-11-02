import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_keyword_extraction_api.jretro.dart';

@GenApiClient()
class TextTextKeywordExtractionApi extends ApiClient with _$TextTextKeywordExtractionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextKeywordExtractionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the keyword-extraction task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/keyword-extraction/")
    Future<Object> applyTextTextKeywordExtractionPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextKeywordExtractionPost(
        
        text, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for keyword-extraction
    ///
    /// 
    @GetReq(path: "/text/text/keyword-extraction/")
    Future<Object> getVersionsTextTextKeywordExtractionGet(
        ) {
        return super.getVersionsTextTextKeywordExtractionGet(

        ).timeout(timeout);
    }


}
