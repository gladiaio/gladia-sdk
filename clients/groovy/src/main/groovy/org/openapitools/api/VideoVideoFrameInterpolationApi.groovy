package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class VideoVideoFrameInterpolationApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyVideoVideoFrameInterpolationPost ( File video, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/video/video/frame-interpolation/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        
        // verify required params are set
        if (video == null) {
            throw new RuntimeException("missing required params video")
        }
        

        if (model != null) {
            queryParams.put("model", model)
        }



        contentType = 'multipart/form-data';
        // only one form parameter
        if (1 == 1) {
            bodyParams = video
        }
        // array of form parameters
        else {
            bodyParams = [:]
        }
        // array of form parameters
        if (1 < 1) {
            bodyParams.put("video", video)
        }

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsVideoVideoFrameInterpolationGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/video/video/frame-interpolation/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

}
