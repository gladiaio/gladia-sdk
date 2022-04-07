//
// ImageImageBackgroundRemovalAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class ImageImageBackgroundRemovalAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyImageImageBackgroundRemovalPost: String { 
        case Mobilenet = "mobilenet"
        case Xception = "xception"
    }

    /**
     Apply model for the background-removal task for a given models
     
     - parameter image: (form)  
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyImageImageBackgroundRemovalPost(image image: NSURL, model: Model_applyImageImageBackgroundRemovalPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyImageImageBackgroundRemovalPostWithRequestBuilder(image: image, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the background-removal task for a given models
     - POST /image/image/background-removal/     - parameter image: (form)  
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyImageImageBackgroundRemovalPostWithRequestBuilder(image image: NSURL, model: Model_applyImageImageBackgroundRemovalPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/image/image/background-removal/"
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
     Get list of models available for background-removal
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsImageImageBackgroundRemovalGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsImageImageBackgroundRemovalGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for background-removal
     - GET /image/image/background-removal/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsImageImageBackgroundRemovalGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/image/image/background-removal/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
