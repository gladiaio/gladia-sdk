import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_text_ocr_api.jretro.dart';

@GenApiClient()
class ImageTextOcrApi extends ApiClient with _$ImageTextOcrApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageTextOcrApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the ocr task for a given models
    ///
    /// 
    @PostReq(path: "/image/text/ocr/")
    Future<Object> applyImageTextOcrPost(
        
            @QueryParam("source_language") String sourceLanguage, 
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageTextOcrPost(
        
        sourceLanguage, 
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for ocr
    ///
    /// 
    @GetReq(path: "/image/text/ocr/")
    Future<Object> getVersionsImageTextOcrGet(
        ) {
        return super.getVersionsImageTextOcrGet(

        ).timeout(timeout);
    }


}
