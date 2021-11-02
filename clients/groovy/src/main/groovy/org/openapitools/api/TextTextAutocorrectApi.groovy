package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextAutocorrectApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextAutocorrectPost ( String sentence, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/autocorrect/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (sentence != null) {
            queryParams.put("sentence", sentence)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextAutocorrectGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/autocorrect/"

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
