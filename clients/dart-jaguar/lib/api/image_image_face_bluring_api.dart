import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_image_face_bluring_api.jretro.dart';

@GenApiClient()
class ImageImageFaceBluringApi extends ApiClient with _$ImageImageFaceBluringApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageImageFaceBluringApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the face-bluring task for a given models
    ///
    /// 
    @PostReq(path: "/image/image/face-bluring/")
    Future<Object> applyImageImageFaceBluringPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageImageFaceBluringPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for face-bluring
    ///
    /// 
    @GetReq(path: "/image/image/face-bluring/")
    Future<Object> getVersionsImageImageFaceBluringGet(
        ) {
        return super.getVersionsImageImageFaceBluringGet(

        ).timeout(timeout);
    }


}
