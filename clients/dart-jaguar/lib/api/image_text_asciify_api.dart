import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_text_asciify_api.jretro.dart';

@GenApiClient()
class ImageTextAsciifyApi extends ApiClient with _$ImageTextAsciifyApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageTextAsciifyApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the asciify task for a given models
    ///
    /// 
    @PostReq(path: "/image/text/asciify/")
    Future<Object> applyImageTextAsciifyPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageTextAsciifyPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for asciify
    ///
    /// 
    @GetReq(path: "/image/text/asciify/")
    Future<Object> getVersionsImageTextAsciifyGet(
        ) {
        return super.getVersionsImageTextAsciifyGet(

        ).timeout(timeout);
    }


}
