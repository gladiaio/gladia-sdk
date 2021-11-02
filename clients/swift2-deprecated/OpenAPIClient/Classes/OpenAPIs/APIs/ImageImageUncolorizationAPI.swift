//
// ImageImageUncolorizationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class ImageImageUncolorizationAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyImageImageUncolorizationPost: String { 
        case V1 = "v1"
    }

    /**
     Apply model for the uncolorization task for a given models
     
     - parameter image: (form)  
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyImageImageUncolorizationPost(image image: NSURL, model: Model_applyImageImageUncolorizationPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyImageImageUncolorizationPostWithRequestBuilder(image: image, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the uncolorization task for a given models
     - POST /image/image/uncolorization/     - parameter image: (form)  
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyImageImageUncolorizationPostWithRequestBuilder(image image: NSURL, model: Model_applyImageImageUncolorizationPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/image/image/uncolorization/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "model": model?.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: falsefalse)
    }

    /**
     Get list of models available for uncolorization
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsImageImageUncolorizationGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsImageImageUncolorizationGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for uncolorization
     - GET /image/image/uncolorization/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsImageImageUncolorizationGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/image/image/uncolorization/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
