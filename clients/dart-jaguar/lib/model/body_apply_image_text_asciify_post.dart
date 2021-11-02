import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_text_asciify_post.jser.dart';

class BodyApplyImageTextAsciifyPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageTextAsciifyPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageTextAsciifyPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageTextAsciifyPostSerializer extends Serializer<BodyApplyImageTextAsciifyPost> with _$BodyApplyImageTextAsciifyPostSerializer {

}

