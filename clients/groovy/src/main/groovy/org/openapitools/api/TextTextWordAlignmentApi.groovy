package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextWordAlignmentApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextWordAlignmentPost ( String inputStringLanguage1, String inputStringLanguage2, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/word-alignment/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (inputStringLanguage1 != null) {
            queryParams.put("input_string_language_1", inputStringLanguage1)
        }
        if (inputStringLanguage2 != null) {
            queryParams.put("input_string_language_2", inputStringLanguage2)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextWordAlignmentGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/word-alignment/"

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
