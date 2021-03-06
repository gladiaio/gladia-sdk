//
// TextTextProgrammingLanguageGenerationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire


open class TextTextProgrammingLanguageGenerationAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextProgrammingLanguageGenerationPost: String { 
        case sentdexGpyt = "sentdex-GPyT"
    }

    /**
     Apply model for the programming-language-generation task for a given models
     - parameter codeSnippet: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyTextTextProgrammingLanguageGenerationPost(codeSnippet: String? = nil, model: Model_applyTextTextProgrammingLanguageGenerationPost? = nil, completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        applyTextTextProgrammingLanguageGenerationPostWithRequestBuilder(codeSnippet: codeSnippet, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Apply model for the programming-language-generation task for a given models
     - POST /text/text/programming-language-generation/
     - parameter codeSnippet: (query)  (optional)
     - parameter model: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func applyTextTextProgrammingLanguageGenerationPostWithRequestBuilder(codeSnippet: String? = nil, model: Model_applyTextTextProgrammingLanguageGenerationPost? = nil) -> RequestBuilder<Any> {
        let path = "/text/text/programming-language-generation/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "code_snippet": codeSnippet,
            "model": model?.rawValue
        ])

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of models available for programming-language-generation
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsTextTextProgrammingLanguageGenerationGet(completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        getVersionsTextTextProgrammingLanguageGenerationGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of models available for programming-language-generation
     - GET /text/text/programming-language-generation/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsTextTextProgrammingLanguageGenerationGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/text/text/programming-language-generation/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
