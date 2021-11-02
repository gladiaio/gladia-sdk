part of openapi.api;

class BodyApplyImageImageUncolorizationPost {
  
  MultipartFile image = null;
  BodyApplyImageImageUncolorizationPost();

  @override
  String toString() {
    return 'BodyApplyImageImageUncolorizationPost[image=$image, ]';
  }

  BodyApplyImageImageUncolorizationPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageImageUncolorizationPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageImageUncolorizationPost>() : json.map((value) => new BodyApplyImageImageUncolorizationPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageImageUncolorizationPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageImageUncolorizationPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageImageUncolorizationPost.fromJson(value));
    }
    return map;
  }
}

