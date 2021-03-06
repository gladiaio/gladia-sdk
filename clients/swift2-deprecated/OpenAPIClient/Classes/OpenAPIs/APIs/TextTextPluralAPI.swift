//
// TextTextPluralAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class TextTextPluralAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextPluralPost: String { 
        case Inflect = "inflect"
    }

    /**
     Apply model for the plural task for a given models
     
     - parameter word: (query)  (optional)
     - parameter count: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyTextTextPluralPost(word word: String? = nil, count: Int32? = nil, model: Model_applyTextTextPluralPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyTextTextPluralPostWithRequestBuilder(word: word, count: count, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the plural task for a given models
     - POST /text/text/plural/     - parameter word: (query)  (optional)
     - parameter count: (query)  (optional)
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyTextTextPluralPostWithRequestBuilder(word word: String? = nil, count: Int32? = nil, model: Model_applyTextTextPluralPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/text/text/plural/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "word": word,
            "count": count?.encodeToJSON(),
            "model": model?.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get list of models available for plural
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsTextTextPluralGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsTextTextPluralGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for plural
     - GET /text/text/plural/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsTextTextPluralGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/text/text/plural/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
