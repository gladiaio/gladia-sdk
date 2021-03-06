//
// TextTextLemmatizationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire


open class TextTextLemmatizationAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextLemmatizationPost: String { 
        case wordnet = "wordnet"
    }

    /**
     Apply model for the lemmatization task for a given models
     - parameter sentence: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyTextTextLemmatizationPost(sentence: String? = nil, model: Model_applyTextTextLemmatizationPost? = nil, completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        applyTextTextLemmatizationPostWithRequestBuilder(sentence: sentence, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Apply model for the lemmatization task for a given models
     - POST /text/text/lemmatization/
     - parameter sentence: (query)  (optional)
     - parameter model: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func applyTextTextLemmatizationPostWithRequestBuilder(sentence: String? = nil, model: Model_applyTextTextLemmatizationPost? = nil) -> RequestBuilder<Any> {
        let path = "/text/text/lemmatization/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "sentence": sentence,
            "model": model?.rawValue
        ])

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of models available for lemmatization
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsTextTextLemmatizationGet(completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        getVersionsTextTextLemmatizationGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of models available for lemmatization
     - GET /text/text/lemmatization/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsTextTextLemmatizationGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/text/text/lemmatization/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
