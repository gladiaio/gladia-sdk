//
// TextTextSimilarityAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class TextTextSimilarityAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextSimilarityPost: String { 
        case AllMinilmL6V2 = "all-MiniLM-L6-v2"
    }

    /**
     Apply model for the similarity task for a given models
     
     - parameter sentence1: (query)  (optional)
     - parameter sentence2: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyTextTextSimilarityPost(sentence1 sentence1: String? = nil, sentence2: String? = nil, model: Model_applyTextTextSimilarityPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyTextTextSimilarityPostWithRequestBuilder(sentence1: sentence1, sentence2: sentence2, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the similarity task for a given models
     - POST /text/text/similarity/     - parameter sentence1: (query)  (optional)
     - parameter sentence2: (query)  (optional)
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyTextTextSimilarityPostWithRequestBuilder(sentence1 sentence1: String? = nil, sentence2: String? = nil, model: Model_applyTextTextSimilarityPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/text/text/similarity/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "sentence_1": sentence1,
            "sentence_2": sentence2,
            "model": model?.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get list of models available for similarity
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsTextTextSimilarityGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsTextTextSimilarityGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for similarity
     - GET /text/text/similarity/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsTextTextSimilarityGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/text/text/similarity/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
