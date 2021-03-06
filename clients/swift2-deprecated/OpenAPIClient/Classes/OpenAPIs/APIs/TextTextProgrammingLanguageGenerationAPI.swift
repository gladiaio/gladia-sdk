//
// TextTextProgrammingLanguageGenerationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class TextTextProgrammingLanguageGenerationAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextProgrammingLanguageGenerationPost: String { 
        case SentdexGpyt = "sentdex-GPyT"
    }

    /**
     Apply model for the programming-language-generation task for a given models
     
     - parameter codeSnippet: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyTextTextProgrammingLanguageGenerationPost(codeSnippet codeSnippet: String? = nil, model: Model_applyTextTextProgrammingLanguageGenerationPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyTextTextProgrammingLanguageGenerationPostWithRequestBuilder(codeSnippet: codeSnippet, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the programming-language-generation task for a given models
     - POST /text/text/programming-language-generation/     - parameter codeSnippet: (query)  (optional)
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyTextTextProgrammingLanguageGenerationPostWithRequestBuilder(codeSnippet codeSnippet: String? = nil, model: Model_applyTextTextProgrammingLanguageGenerationPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/text/text/programming-language-generation/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "code_snippet": codeSnippet,
            "model": model?.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get list of models available for programming-language-generation
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsTextTextProgrammingLanguageGenerationGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsTextTextProgrammingLanguageGenerationGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for programming-language-generation
     - GET /text/text/programming-language-generation/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsTextTextProgrammingLanguageGenerationGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/text/text/programming-language-generation/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
