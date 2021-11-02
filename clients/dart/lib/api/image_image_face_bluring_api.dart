part of openapi.api;



class ImageImageFaceBluringApi {
  final ApiClient apiClient;

  ImageImageFaceBluringApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Apply model for the face-bluring task for a given models
  ///
  /// 
  Future<Object> applyImageImageFaceBluringPost(MultipartFile image, { String model }) async {
    Object postBody;

    // verify required params are set
    if(image == null) {
     throw new ApiException(400, "Missing required param: image");
    }

    // create path and map variables
    String path = "/image/image/face-bluring/".replaceAll("{format}","json");

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
      if (image != null) {
        hasFields = true;
        mp.fields['image'] = image.field;
        mp.files.add(image);
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
  /// Get list of models available for face-bluring
  ///
  /// 
  Future<Object> getVersionsImageImageFaceBluringGet() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/image/image/face-bluring/".replaceAll("{format}","json");

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
