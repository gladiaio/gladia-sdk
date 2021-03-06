//
// ImageImageBackgroundRemovalAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire


open class ImageImageBackgroundRemovalAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyImageImageBackgroundRemovalPost: String { 
        case mobilenet = "mobilenet"
        case xception = "xception"
    }

    /**
     Apply model for the background-removal task for a given models
     - parameter image: (form)  
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyImageImageBackgroundRemovalPost(image: URL, model: Model_applyImageImageBackgroundRemovalPost? = nil, completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        applyImageImageBackgroundRemovalPostWithRequestBuilder(image: image, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Apply model for the background-removal task for a given models
     - POST /image/image/background-removal/
     - parameter image: (form)  
     - parameter model: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func applyImageImageBackgroundRemovalPostWithRequestBuilder(image: URL, model: Model_applyImageImageBackgroundRemovalPost? = nil) -> RequestBuilder<Any> {
        let path = "/image/image/background-removal/"
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
     Get list of models available for background-removal
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsImageImageBackgroundRemovalGet(completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        getVersionsImageImageBackgroundRemovalGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of models available for background-removal
     - GET /image/image/background-removal/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsImageImageBackgroundRemovalGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/image/image/background-removal/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
