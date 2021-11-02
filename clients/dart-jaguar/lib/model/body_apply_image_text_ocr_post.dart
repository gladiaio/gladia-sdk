import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'body_apply_image_text_ocr_post.jser.dart';

class BodyApplyImageTextOcrPost {
  
  @Alias('image')
  final Uint8List image;
  

  BodyApplyImageTextOcrPost(
      

{
    
     this.image = null 
    }
  );

  @override
  String toString() {
    return 'BodyApplyImageTextOcrPost[image=$image, ]';
  }
}

@GenSerializer(nullableFields: true)
class BodyApplyImageTextOcrPostSerializer extends Serializer<BodyApplyImageTextOcrPost> with _$BodyApplyImageTextOcrPostSerializer {

}

