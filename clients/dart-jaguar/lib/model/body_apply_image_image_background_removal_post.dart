import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_image_background_removal_post.jser.dart';

class BodyApplyImageImageBackgroundRemovalPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageImageBackgroundRemovalPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageImageBackgroundRemovalPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageImageBackgroundRemovalPostSerializer extends Serializer<BodyApplyImageImageBackgroundRemovalPost> with _$BodyApplyImageImageBackgroundRemovalPostSerializer {

}

