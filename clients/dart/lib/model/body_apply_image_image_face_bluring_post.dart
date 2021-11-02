part of openapi.api;

class BodyApplyImageImageFaceBluringPost {
  
  MultipartFile image = null;
  BodyApplyImageImageFaceBluringPost();

  @override
  String toString() {
    return 'BodyApplyImageImageFaceBluringPost[image=$image, ]';
  }

  BodyApplyImageImageFaceBluringPost.fromJson(Map<String, dynamic> json) {
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

  static List<BodyApplyImageImageFaceBluringPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyImageImageFaceBluringPost>() : json.map((value) => new BodyApplyImageImageFaceBluringPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyImageImageFaceBluringPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyImageImageFaceBluringPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyImageImageFaceBluringPost.fromJson(value));
    }
    return map;
  }
}

