part of openapi.api;

class BodyApplyImageTextAsciifyPost {
  
  MultipartFile image = null;
  BodyApplyImageTextAsciifyPost();

  @override
  String toString() {
    return 'BodyApplyImageTextAsciifyPost[image=$image, ]';
  }

  BodyApplyImageTextAsciifyPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageTextAsciifyPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageTextAsciifyPost>() : json.map((value) => new BodyApplyImageTextAsciifyPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageTextAsciifyPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageTextAsciifyPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageTextAsciifyPost.fromJson(value));
    }
    return map;
  }
}

