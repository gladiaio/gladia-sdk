package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class ImageImageBackgroundRemovalApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyImageImageBackgroundRemovalPost ( File image, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/image/image/background-removal/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        
        // verify required params are set
        if (image == null) {
            throw new RuntimeException("missing required params image")
        }
        

        if (model != null) {
            queryParams.put("model", model)
        }



        contentType = 'multipart/form-data';
        // only one form parameter
        if (1 == 1) {
            bodyParams = image
        }
        // array of form parameters
        else {
            bodyParams = [:]
        }
        // array of form parameters
        if (1 < 1) {
            bodyParams.put("image", image)
        }

        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsImageImageBackgroundRemovalGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/image/image/background-removal/"

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
