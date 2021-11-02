package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextHateSpeechDetectionApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextHateSpeechDetectionPost ( String text, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/hate-speech-detection/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (text != null) {
            queryParams.put("text", text)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextHateSpeechDetectionGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/hate-speech-detection/"

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
