import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';

part 'text_text_transliteration_api.jretro.dart';

@GenApiClient()
class TextTextTransliterationApi extends ApiClient with _$TextTextTransliterationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TextTextTransliterationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the transliteration task for a given models
    ///
    /// 
    @PostReq(path: "/text/text/transliteration/")
    Future<Object> applyTextTextTransliterationPost(
        
            @QueryParam("text") String text, 
        
            @QueryParam("language") String language, 
        
            @QueryParam("model") String model
        ) {
        return super.applyTextTextTransliterationPost(
        
        text, 
        
        language, 
        
        model

        ).timeout(timeout);
    }

    /// Get list of models available for transliteration
    ///
    /// 
    @GetReq(path: "/text/text/transliteration/")
    Future<Object> getVersionsTextTextTransliterationGet(
        ) {
        return super.getVersionsTextTextTransliterationGet(

        ).timeout(timeout);
    }


}
