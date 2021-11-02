part of openapi.api;

class BodyApplyImageImageColorizationPost {
  
  MultipartFile image = null;
  BodyApplyImageImageColorizationPost();

  @override
  String toString() {
    return 'BodyApplyImageImageColorizationPost[image=$image, ]';
  }

  BodyApplyImageImageColorizationPost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['image'] == null) {
      image = null;
    } else {
      image = new File.fromJson(json['image']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<BodyApplyImageImageColorizationPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageImageColorizationPost>() : json.map((value) => new BodyApplyImageImageColorizationPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageImageColorizationPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageImageColorizationPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageImageColorizationPost.fromJson(value));
    }
    return map;
  }
}

