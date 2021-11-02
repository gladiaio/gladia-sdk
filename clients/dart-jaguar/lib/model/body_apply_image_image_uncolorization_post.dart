import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_image_uncolorization_post.jser.dart';

class BodyApplyImageImageUncolorizationPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageImageUncolorizationPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageImageUncolorizationPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageImageUncolorizationPostSerializer extends Serializer<BodyApplyImageImageUncolorizationPost> with _$BodyApplyImageImageUncolorizationPostSerializer {

}

