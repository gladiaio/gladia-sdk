package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextQuestionAnsweringApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextQuestionAnsweringPost ( String context, String question, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/question-answering/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (context != null) {
            queryParams.put("context", context)
        }
        if (question != null) {
            queryParams.put("question", question)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextQuestionAnsweringGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/question-answering/"

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
