package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextSummarizationApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextSummarizationPost ( String text, String sourceLanguage, Integer maxLength, Integer minLength, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/summarization/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (text != null) {
            queryParams.put("text", text)
        }
        if (sourceLanguage != null) {
            queryParams.put("source_language", sourceLanguage)
        }
        if (maxLength != null) {
            queryParams.put("max_length", maxLength)
        }
        if (minLength != null) {
            queryParams.put("min_length", minLength)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextSummarizationGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/summarization/"

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
