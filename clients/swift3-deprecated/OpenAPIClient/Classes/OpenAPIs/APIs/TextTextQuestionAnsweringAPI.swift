//
// TextTextQuestionAnsweringAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire


open class TextTextQuestionAnsweringAPI: APIBase {
    /**
     * enum for parameter model
     */
    public enum Model_applyTextTextQuestionAnsweringPost: String { 
        case mrm8488BertTiny5FinetunedSquadv2 = "mrm8488-bert-tiny-5-finetuned-squadv2"
        case mfebAlbertXxlargeV2Squad2 = "mfeb-albert-xxlarge-v2-squad2"
        case deepsetRobertaBaseSquad2 = "deepset-roberta-base-squad2"
        case distilbertBaseCasedDistilledSquad = "distilbert-base-cased-distilled-squad"
        case deepsetBertBaseCasedSquad2 = "deepset_bert-base-cased-squad2"
    }

    /**
     Apply model for the question-answering task for a given models
     - parameter context: (query)  (optional)
     - parameter question: (query)  (optional)
     - parameter model: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applyTextTextQuestionAnsweringPost(context: String? = nil, question: String? = nil, model: Model_applyTextTextQuestionAnsweringPost? = nil, completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        applyTextTextQuestionAnsweringPostWithRequestBuilder(context: context, question: question, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Apply model for the question-answering task for a given models
     - POST /text/text/question-answering/
     - parameter context: (query)  (optional)
     - parameter question: (query)  (optional)
     - parameter model: (query)  (optional)
     - returns: RequestBuilder<Any> 
     */
    open class func applyTextTextQuestionAnsweringPostWithRequestBuilder(context: String? = nil, question: String? = nil, model: Model_applyTextTextQuestionAnsweringPost? = nil) -> RequestBuilder<Any> {
        let path = "/text/text/question-answering/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "context": context,
            "question": question,
            "model": model?.rawValue
        ])

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get list of models available for question-answering
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersionsTextTextQuestionAnsweringGet(completion: @escaping ((_ data: Any?, _ error: ErrorResponse?) -> Void)) {
        getVersionsTextTextQuestionAnsweringGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of models available for question-answering
     - GET /text/text/question-answering/
     - returns: RequestBuilder<Any> 
     */
    open class func getVersionsTextTextQuestionAnsweringGetWithRequestBuilder() -> RequestBuilder<Any> {
        let path = "/text/text/question-answering/"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Any>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
