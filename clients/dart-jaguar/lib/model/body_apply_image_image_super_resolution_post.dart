import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_image_super_resolution_post.jser.dart';

class BodyApplyImageImageSuperResolutionPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageImageSuperResolutionPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageImageSuperResolutionPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageImageSuperResolutionPostSerializer extends Serializer<BodyApplyImageImageSuperResolutionPost> with _$BodyApplyImageImageSuperResolutionPostSerializer {

}

