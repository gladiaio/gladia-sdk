part of openapi.api;

class BodyApplyVideoVideoFrameInterpolationPost {
  
  MultipartFile video = null;
  BodyApplyVideoVideoFrameInterpolationPost();

  @override
  String toString() {
    return 'BodyApplyVideoVideoFrameInterpolationPost[video=$video, ]';
  }

  BodyApplyVideoVideoFrameInterpolationPost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['video'] == null) {
      video = null;
    } else {
      video = new File.fromJson(json['video']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (video != null)
      json['video'] = video;
    return json;
  }

  static List<BodyApplyVideoVideoFrameInterpolationPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyApplyVideoVideoFrameInterpolationPost>() : json.map((value) => new BodyApplyVideoVideoFrameInterpolationPost.fromJson(value)).toList();
  }

  static Map<String, BodyApplyVideoVideoFrameInterpolationPost> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, BodyApplyVideoVideoFrameInterpolationPost>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new BodyApplyVideoVideoFrameInterpolationPost.fromJson(value));
    }
    return map;
  }
}

