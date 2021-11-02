import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_video_video_frame_interpolation_post.jser.dart';

class BodyApplyVideoVideoFrameInterpolationPost {
  
  @Alias('video')
  final Uint8List video;
  

  BodyApplyVideoVideoFrameInterpolationPost(
      

{
    
     this.video = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyVideoVideoFrameInterpolationPost[video=$video, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyVideoVideoFrameInterpolationPostSerializer extends Serializer<BodyApplyVideoVideoFrameInterpolationPost> with _$BodyApplyVideoVideoFrameInterpolationPostSerializer {

}

