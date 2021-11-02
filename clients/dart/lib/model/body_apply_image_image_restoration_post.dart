part of openapi.api;

class BodyApplyImageImageRestorationPost {
  
  MultipartFile image = null;
  BodyApplyImageImageRestorationPost();

  @override
  String toString() {
    return 'BodyApplyImageImageRestorationPost[image=$image, ]';
  }

  BodyApplyImageImageRestorationPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageImageRestorationPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageImageRestorationPost>() : json.map((value) => new BodyApplyImageImageRestorationPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageImageRestorationPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageImageRestorationPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageImageRestorationPost.fromJson(value));
    }
    return map;
  }
}

