import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_image_colorization_api.jretro.dart';

@GenApiClient()
class ImageImageColorizationApi extends ApiClient with _$ImageImageColorizationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageImageColorizationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the colorization task for a given models
    ///
    /// 
    @PostReq(path: "/image/image/colorization/")
    Future<Object> applyImageImageColorizationPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageImageColorizationPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for colorization
    ///
    /// 
    @GetReq(path: "/image/image/colorization/")
    Future<Object> getVersionsImageImageColorizationGet(
        ) {
        return super.getVersionsImageImageColorizationGet(

        ).timeout(timeout);
    }


}
