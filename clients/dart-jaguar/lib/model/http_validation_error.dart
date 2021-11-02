import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/validation_error.dart';

part 'http_validation_error.jser.dart';

class HTTPValidationError {
  
  @Alias('detail')
  final List<ValidationError> detail;
  

  HTTPValidationError(
      

{
     this.detail = const [] 
    
    }
  );

  @override
  String toString() {
    return 'HTTPValidationError[detail=$detail, ]';
  }
}

@GenSerializer(nullableFields: true)
class HTTPValidationErrorSerializer extends Serializer<HTTPValidationError> with _$HTTPValidationErrorSerializer {

}

