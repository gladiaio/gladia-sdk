//
// ImageImageRestorationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class ImageImageRestorationAPI {
    /**
     Apply model for the restoration task for a given models
     
     - parameter image: (form)  
     - parameter model: (query)  (optional, default to "bringing-old-photos-back-to-life")
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyImageImageRestorationPost(image: URL, model: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        applyImageImageRestorationPostWithRequestBuilder(image: image, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Apply model for the restoration task for a given models
     - POST /image/image/restoration/
     - parameter image: (form)  
     - parameter model: (query)  (optional, default to "bringing-old-photos-back-to-life")
     - returns: RequestBuilder<Any> 
     */
    open class func applyImageImageRestorationPostWithRequestBuilder(image: URL, model: String? = nil) -> RequestBuilder<Any> {
        let path = "/image/image/restoration/"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "image": image
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "model": model
        ])

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of models available for restoration
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsImageImageRestorationGet(completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        getVersionsImageImageRestorationGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get list of models available for restoration
     - GET /image/image/restoration/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsImageImageRestorationGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/image/image/restoration/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
