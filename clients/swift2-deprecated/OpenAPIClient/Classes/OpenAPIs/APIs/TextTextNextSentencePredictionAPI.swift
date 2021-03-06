//
// TextTextNextSentencePredictionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class TextTextNextSentencePredictionAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextNextSentencePredictionPost: String { 
        case BertBaseUncased = "bert-base-uncased"
    }

    /**
     Apply model for the next-sentence-prediction task for a given models
     
     - parameter sentence1: (query)  (optional)
     - parameter sentence2: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyTextTextNextSentencePredictionPost(sentence1 sentence1: String? = nil, sentence2: String? = nil, model: Model_applyTextTextNextSentencePredictionPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyTextTextNextSentencePredictionPostWithRequestBuilder(sentence1: sentence1, sentence2: sentence2, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the next-sentence-prediction task for a given models
     - POST /text/text/next-sentence-prediction/     - parameter sentence1: (query)  (optional)
     - parameter sentence2: (query)  (optional)
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyTextTextNextSentencePredictionPostWithRequestBuilder(sentence1 sentence1: String? = nil, sentence2: String? = nil, model: Model_applyTextTextNextSentencePredictionPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/text/text/next-sentence-prediction/"
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
     Get list of models available for next-sentence-prediction
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsTextTextNextSentencePredictionGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsTextTextNextSentencePredictionGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for next-sentence-prediction
     - GET /text/text/next-sentence-prediction/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsTextTextNextSentencePredictionGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/text/text/next-sentence-prediction/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
