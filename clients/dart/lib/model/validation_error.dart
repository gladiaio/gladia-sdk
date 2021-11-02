part of openapi.api;

class ValidationError {
  
  List<String> loc = [];
  
  String msg = null;
  
  String type = null;
  ValidationError();

  @override
  String toString() {
    return 'ValidationError[loc=$loc, msg=$msg, type=$type, ]';
  }

  ValidationError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['loc'] == null) {
      loc = null;
    } else {
      loc = (json['loc'] as List).cast<String>();
    }
    if (json['msg'] == null) {
      msg = null;
    } else {
          msg = json['msg'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (loc != null)
      json['loc'] = loc;
    if (msg != null)
      json['msg'] = msg;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<ValidationError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidationError>() : json.map((value) => new ValidationError.fromJson(value)).toList();
  }

  static Map<String, ValidationError> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ValidationError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ValidationError.fromJson(value));
    }
    return map;
  }
}

