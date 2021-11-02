import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_image_face_bluring_post.jser.dart';

class BodyApplyImageImageFaceBluringPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageImageFaceBluringPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageImageFaceBluringPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageImageFaceBluringPostSerializer extends Serializer<BodyApplyImageImageFaceBluringPost> with _$BodyApplyImageImageFaceBluringPostSerializer {

}

