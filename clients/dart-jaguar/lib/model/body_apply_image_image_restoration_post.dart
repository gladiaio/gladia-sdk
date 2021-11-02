import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_image_restoration_post.jser.dart';

class BodyApplyImageImageRestorationPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageImageRestorationPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageImageRestorationPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageImageRestorationPostSerializer extends Serializer<BodyApplyImageImageRestorationPost> with _$BodyApplyImageImageRestorationPostSerializer {

}

