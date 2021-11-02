import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_image_restoration_api.jretro.dart';

@GenApiClient()
class ImageImageRestorationApi extends ApiClient with _$ImageImageRestorationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageImageRestorationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the restoration task for a given models
    ///
    /// 
    @PostReq(path: "/image/image/restoration/")
    Future<Object> applyImageImageRestorationPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageImageRestorationPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for restoration
    ///
    /// 
    @GetReq(path: "/image/image/restoration/")
    Future<Object> getVersionsImageImageRestorationGet(
        ) {
        return super.getVersionsImageImageRestorationGet(

        ).timeout(timeout);
    }


}
