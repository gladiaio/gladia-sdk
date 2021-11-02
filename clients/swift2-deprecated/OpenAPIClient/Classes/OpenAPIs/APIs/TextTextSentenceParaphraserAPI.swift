//
// TextTextSentenceParaphraserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class TextTextSentenceParaphraserAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextSentenceParaphraserPost: String { 
        case RamsrigouthamgT5LargeParaphraserDiverseHighQuality = "ramsrigouthamg-t5-large-paraphraser-diverse-high-quality"
    }

    /**
     Apply model for the sentence-paraphraser task for a given models
     
     - parameter context: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyTextTextSentenceParaphraserPost(context context: String? = nil, model: Model_applyTextTextSentenceParaphraserPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyTextTextSentenceParaphraserPostWithRequestBuilder(context: context, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the sentence-paraphraser task for a given models
     - POST /text/text/sentence-paraphraser/     - parameter context: (query)  (optional)
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyTextTextSentenceParaphraserPostWithRequestBuilder(context context: String? = nil, model: Model_applyTextTextSentenceParaphraserPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/text/text/sentence-paraphraser/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "context": context,
            "model": model?.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get list of models available for sentence-paraphraser
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsTextTextSentenceParaphraserGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsTextTextSentenceParaphraserGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for sentence-paraphraser
     - GET /text/text/sentence-paraphraser/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsTextTextSentenceParaphraserGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/text/text/sentence-paraphraser/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
