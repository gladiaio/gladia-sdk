//
// ImageImageFaceBluringAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



open class ImageImageFaceBluringAPI {
    /**
     * enum for parameter model
     */
    public enum Model_applyImageImageFaceBluringPost: String {
        case ageitgey = "ageitgey"
    }

    /**
     Apply model for the face-bluring task for a given models
     
     - parameter image: (form)  
     - parameter model: (query)  (optional, default to .ageitgey)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyImageImageFaceBluringPost(image: URL, model: Model_applyImageImageFaceBluringPost? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        applyImageImageFaceBluringPostWithRequestBuilder(image: image, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Apply model for the face-bluring task for a given models
     - POST /image/image/face-bluring/
     - parameter image: (form)  
     - parameter model: (query)  (optional, default to .ageitgey)
     - returns: RequestBuilder<Any> 
     */
    open class func applyImageImageFaceBluringPostWithRequestBuilder(image: URL, model: Model_applyImageImageFaceBluringPost? = nil) -> RequestBuilder<Any> {
        let path = "/image/image/face-bluring/"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "image": image
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "model": model?.rawValue
        ])

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of models available for face-bluring
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsImageImageFaceBluringGet(completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        getVersionsImageImageFaceBluringGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Get list of models available for face-bluring
     - GET /image/image/face-bluring/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsImageImageFaceBluringGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/image/image/face-bluring/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
