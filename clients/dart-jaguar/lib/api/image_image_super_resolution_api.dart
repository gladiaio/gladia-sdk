import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_image_super_resolution_api.jretro.dart';

@GenApiClient()
class ImageImageSuperResolutionApi extends ApiClient with _$ImageImageSuperResolutionApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageImageSuperResolutionApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the super-resolution task for a given models
    ///
    /// 
    @PostReq(path: "/image/image/super-resolution/")
    Future<Object> applyImageImageSuperResolutionPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageImageSuperResolutionPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for super-resolution
    ///
    /// 
    @GetReq(path: "/image/image/super-resolution/")
    Future<Object> getVersionsImageImageSuperResolutionGet(
        ) {
        return super.getVersionsImageImageSuperResolutionGet(

        ).timeout(timeout);
    }


}
