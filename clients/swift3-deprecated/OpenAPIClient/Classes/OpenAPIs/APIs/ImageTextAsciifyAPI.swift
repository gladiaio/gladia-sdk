//
// ImageTextAsciifyAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire


open class ImageTextAsciifyAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyImageTextAsciifyPost: String { 
        case rameshAditya = "ramesh-aditya"
    }

    /**
     Apply model for the asciify task for a given models
     - parameter image: (form)  
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyImageTextAsciifyPost(image: URL, model: Model_applyImageTextAsciifyPost? = nil, completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        applyImageTextAsciifyPostWithRequestBuilder(image: image, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Apply model for the asciify task for a given models
     - POST /image/text/asciify/
     - parameter image: (form)  
     - parameter model: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func applyImageTextAsciifyPostWithRequestBuilder(image: URL, model: Model_applyImageTextAsciifyPost? = nil) -> RequestBuilder<Any> {
        let path = "/image/text/asciify/"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "image": image
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "model": model?.rawValue
        ])

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of models available for asciify
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsImageTextAsciifyGet(completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        getVersionsImageTextAsciifyGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of models available for asciify
     - GET /image/text/asciify/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsImageTextAsciifyGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/image/text/asciify/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
