package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class ImageTextAsciifyApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyImageTextAsciifyPost ( File image, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/image/text/asciify/"

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

    def getVersionsImageTextAsciifyGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/image/text/asciify/"

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
