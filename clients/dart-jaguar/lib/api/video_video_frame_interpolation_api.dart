import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/http_validation_error.dart';
import 'package:openapi/model/object.dart';
import 'dart:typed_data';

part 'video_video_frame_interpolation_api.jretro.dart';

@GenApiClient()
class VideoVideoFrameInterpolationApi extends ApiClient with _$VideoVideoFrameInterpolationApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    VideoVideoFrameInterpolationApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Apply model for the frame-interpolation task for a given models
    ///
    /// 
    @PostReq(path: "/video/video/frame-interpolation/")
    Future<Object> applyVideoVideoFrameInterpolationPost(
        
            @QueryParam("model") String model
            ,
            @AsMultipartField() MultipartFile video
        ) {
        return super.applyVideoVideoFrameInterpolationPost(
        
        model

        ,
        video
        ).timeout(timeout);
    }

    /// Get list of models available for frame-interpolation
    ///
    /// 
    @GetReq(path: "/video/video/frame-interpolation/")
    Future<Object> getVersionsVideoVideoFrameInterpolationGet(
        ) {
        return super.getVersionsVideoVideoFrameInterpolationGet(

        ).timeout(timeout);
    }


}
