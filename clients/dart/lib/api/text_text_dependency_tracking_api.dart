part of openapi.api;



class TextTextDependencyTrackingApi {
  final ApiClient apiClient;

  TextTextDependencyTrackingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Apply model for the dependency-tracking task for a given models
  ///
  /// 
  Future<Object> applyTextTextDependencyTrackingPost({ String inputString, String model }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/text/text/dependency-tracking/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inputString != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "input_string", inputString));
    }
    if(model != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "model", model));
    }

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
  /// Get list of models available for dependency-tracking
  ///
  /// 
  Future<Object> getVersionsTextTextDependencyTrackingGet() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/text/text/dependency-tracking/".replaceAll("{format}","json");

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
