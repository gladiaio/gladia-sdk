part of openapi.api;

class BodyApplyImageImageSuperResolutionPost {
  
  MultipartFile image = null;
  BodyApplyImageImageSuperResolutionPost();

  @override
  String toString() {
    return 'BodyApplyImageImageSuperResolutionPost[image=$image, ]';
  }

  BodyApplyImageImageSuperResolutionPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageImageSuperResolutionPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageImageSuperResolutionPost>() : json.map((value) => new BodyApplyImageImageSuperResolutionPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageImageSuperResolutionPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageImageSuperResolutionPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageImageSuperResolutionPost.fromJson(value));
    }
    return map;
  }
}

