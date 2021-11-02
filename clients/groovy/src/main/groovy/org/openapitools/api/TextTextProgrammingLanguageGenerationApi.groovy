package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.HTTPValidationError

class TextTextProgrammingLanguageGenerationApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def applyTextTextProgrammingLanguageGenerationPost ( String codeSnippet, String model, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/programming-language-generation/"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        

        if (codeSnippet != null) {
            queryParams.put("code_snippet", codeSnippet)
        }
        if (model != null) {
            queryParams.put("model", model)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Object.class )

    }

    def getVersionsTextTextProgrammingLanguageGenerationGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/text/text/programming-language-generation/"

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
