part of openapi.api;

class HTTPValidationError {
  
  List<ValidationError> detail = [];
  HTTPValidationError();

  @override
  String toString() {
    return 'HTTPValidationError[detail=$detail, ]';
  }

  HTTPValidationError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['detail'] == null) {
      detail = null;
    } else {
      detail = ValidationError.listFromJson(json['detail']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (detail != null)
      json['detail'] = detail;
    return json;
  }

  static List<HTTPValidationError> listFromJson(List<dynamic> json) {
    return json == null ? new List<HTTPValidationError>() : json.map((value) => new HTTPValidationError.fromJson(value)).toList();
  }

  static Map<String, HTTPValidationError> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, HTTPValidationError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new HTTPValidationError.fromJson(value));
    }
    return map;
  }
}

