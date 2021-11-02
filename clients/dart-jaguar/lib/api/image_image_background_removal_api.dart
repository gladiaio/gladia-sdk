import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'image_image_background_removal_api.jretro.dart';

@GenApiClient()
class ImageImageBackgroundRemovalApi extends ApiClient with _$ImageImageBackgroundRemovalApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ImageImageBackgroundRemovalApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the background-removal task for a given models
    ///
    /// 
    @PostReq(path: "/image/image/background-removal/")
    Future<Object> applyImageImageBackgroundRemovalPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile image
        ) {
        return super.applyImageImageBackgroundRemovalPost(
        
        model

        ,
        image
        ).timeout(timeout);
    }

    /// Get list of models available for background-removal
    ///
    /// 
    @GetReq(path: "/image/image/background-removal/")
    Future<Object> getVersionsImageImageBackgroundRemovalGet(
        ) {
        return super.getVersionsImageImageBackgroundRemovalGet(

        ).timeout(timeout);
    }


}
