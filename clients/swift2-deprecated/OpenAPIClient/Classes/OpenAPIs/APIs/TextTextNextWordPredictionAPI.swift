//
// TextTextNextWordPredictionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire



public class TextTextNextWordPredictionAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextNextWordPredictionPost: String { 
        case BertBaseUncased = "bert-base-uncased"
        case AlbertBaseV2 = "albert-base-v2"
        case DistilbertBaseUncased = "distilbert-base-uncased"
        case RobertaBase = "roberta-base"
    }

    /**
     Apply model for the next-word-prediction task for a given models
     
     - parameter sentence: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func applyTextTextNextWordPredictionPost(sentence sentence: String? = nil, model: Model_applyTextTextNextWordPredictionPost? = nil, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        applyTextTextNextWordPredictionPostWithRequestBuilder(sentence: sentence, model: model).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Apply model for the next-word-prediction task for a given models
     - POST /text/text/next-word-prediction/     - parameter sentence: (query)  (optional)
     - parameter model: (query)  (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func applyTextTextNextWordPredictionPostWithRequestBuilder(sentence sentence: String? = nil, model: Model_applyTextTextNextWordPredictionPost? = nil) -> RequestBuilder<AnyObject> {
        let path = "/text/text/next-word-prediction/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "sentence": sentence,
            "model": model?.rawValue
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get list of models available for next-word-prediction
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getVersionsTextTextNextWordPredictionGet(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getVersionsTextTextNextWordPredictionGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get list of models available for next-word-prediction
     - GET /text/text/next-word-prediction/
     - returns: RequestBuilder<AnyObject> 
     */
    public class func getVersionsTextTextNextWordPredictionGetWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/text/text/next-word-prediction/"
        let URLString = OpenAPIClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
