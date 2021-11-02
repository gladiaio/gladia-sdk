import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_image_uncolorization_api.jretro.dart';

@GenApiClient()
class ImageImageUncolorizationApi extends ApiClient with _$ImageImageUncolorizationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageImageUncolorizationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the uncolorization task for a given models
    ///
    /// 
    @PostReq(path: "/image/image/uncolorization/")
    Future<Object> applyImageImageUncolorizationPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageImageUncolorizationPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for uncolorization
    ///
    /// 
    @GetReq(path: "/image/image/uncolorization/")
    Future<Object> getVersionsImageImageUncolorizationGet(
        ) {
        return super.getVersionsImageImageUncolorizationGet(

        ).timeout(timeout);
    }


}
