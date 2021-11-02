import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'validation_error.jser.dart';

class ValidationError {
  
  @Alias('loc')
  final List<String> loc;
  
  @Alias('msg')
  final String msg;
  
  @Alias('type')
  final String type;
  

  ValidationError(
      

{
    
     this.loc = const [],  
     this.msg = null,  
     this.type = null 
    }
  );

  @override
  String toString() {
    return 'ValidationError[loc=$loc, msg=$msg, type=$type, ]';
  }
}

@GenSerializer(nullableFields: true)
class ValidationErrorSerializer extends Serializer<ValidationError> with _$ValidationErrorSerializer {

}

