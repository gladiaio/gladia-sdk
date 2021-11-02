import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_image_colorization_post.jser.dart';

class BodyApplyImageImageColorizationPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageImageColorizationPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageImageColorizationPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageImageColorizationPostSerializer extends Serializer<BodyApplyImageImageColorizationPost> with _$BodyApplyImageImageColorizationPostSerializer {

}

