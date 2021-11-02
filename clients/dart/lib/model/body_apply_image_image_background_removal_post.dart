part of openapi.api;

class BodyApplyImageImageBackgroundRemovalPost {
  
  MultipartFile image = null;
  BodyApplyImageImageBackgroundRemovalPost();

  @override
  String toString() {
    return 'BodyApplyImageImageBackgroundRemovalPost[image=$image, ]';
  }

  BodyApplyImageImageBackgroundRemovalPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageImageBackgroundRemovalPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageImageBackgroundRemovalPost>() : json.map((value) => new BodyApplyImageImageBackgroundRemovalPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageImageBackgroundRemovalPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageImageBackgroundRemovalPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageImageBackgroundRemovalPost.fromJson(value));
    }
    return map;
  }
}

