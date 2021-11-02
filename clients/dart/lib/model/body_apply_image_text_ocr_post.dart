part of openapi.api;

class BodyApplyImageTextOcrPost {
  
  MultipartFile image = null;
  BodyApplyImageTextOcrPost();

  @override
  String toString() {
    return 'BodyApplyImageTextOcrPost[image=$image, ]';
  }

  BodyApplyImageTextOcrPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageTextOcrPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageTextOcrPost>() : json.map((value) => new BodyApplyImageTextOcrPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageTextOcrPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageTextOcrPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageTextOcrPost.fromJson(value));
    }
    return map;
  }
}

