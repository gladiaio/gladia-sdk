import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_plural_api.jretro.dart';

@GenApiClient()
class TextTextPluralApi extends ApiClient with _$TextTextPluralApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextPluralApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the plural task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/plural/")
    Future<Object> applyTextTextPluralPost(
        
            @QueryParam("word") String word, 
        
            @QueryParam("count") int count, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextPluralPost(
        
        word, 
        
        count, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for plural
    ///
    /// 
    @GetReq(path: "/text/text/plural/")
    Future<Object> getVersionsTextTextPluralGet(
        ) {
        return super.getVersionsTextTextPluralGet(

        ).timeout(timeout);
    }


}
