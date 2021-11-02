package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextTranslationApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextTranslationPost ( String inputString, String sourceLanguage, String targetLanguage, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/translation/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (inputString != null) {
            queryParams.put("input_string", inputString)
        }
        if (sourceLanguage != null) {
            queryParams.put("source_language", sourceLanguage)
        }
        if (targetLanguage != null) {
            queryParams.put("target_language", targetLanguage)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextTranslationGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/translation/"

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
