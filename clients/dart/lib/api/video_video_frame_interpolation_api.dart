part of openapi.api;



class VideoVideoFrameInterpolationApi {
  final ApiClient apiClient;

  VideoVideoFrameInterpolationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Apply model for the frame-interpolation task for a given models
  ///
  /// 
  Future<Object> applyVideoVideoFrameInterpolationPost(MultipartFile video, { String model }) async {
    Object postBody;

    // verify required params are set
    if(video == null) {
     throw new ApiException(400, "Missing required param: video");
    }

    // create path and map variables
    String path = "/video/video/frame-interpolation/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(model != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "model", model));
    }

    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (video != null) {
        hasFields = true;
        mp.fields['video'] = video.field;
        mp.files.add(video);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
  /// Get list of models available for frame-interpolation
  ///
  /// 
  Future<Object> getVersionsVideoVideoFrameInterpolationGet() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/video/video/frame-interpolation/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Object') as Object;
    } else {
      return null;
    }
  }
}
