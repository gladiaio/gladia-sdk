package org.openapitools.client.api {

import org.openapitools.common.ApiInvoker;
import org.openapitools.exception.ApiErrorCodes;
import org.openapitools.exception.ApiError;
import org.openapitools.common.ApiUserCredentials;
import org.openapitools.event.Response;
import org.openapitools.common.OpenApi;
import org.openapitools.client.model.HTTPValidationError;
import org.openapitools.client.model.Object;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class TextTextNextSentencePredictionApi extends OpenApi {
    /**
    * Constructor for the TextTextNextSentencePredictionApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function TextTextNextSentencePredictionApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_apply_text_text_next_sentence_prediction_post: String = "apply_text_text_next_sentence_prediction_post";
        public static const event_get_versions_text_text_next_sentence_prediction_get: String = "get_versions_text_text_next_sentence_prediction_get";


    /*
     * Returns Object 
     */
    public function apply_text_text_next_sentence_prediction_post (sentence1: String, sentence2: String, model: String): String {
        // create path and map variables
        var path: String = "/text/text/next-sentence-prediction/".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(sentence1))
            queryParams["sentence_1"] = toPathValue(sentence1);
if("null" != String(sentence2))
            queryParams["sentence_2"] = toPathValue(sentence2);
if("null" != String(model))
            queryParams["model"] = toPathValue(model);

        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "apply_text_text_next_sentence_prediction_post";

        token.returnType = Object;
        return requestId;

    }

    /*
     * Returns Object 
     */
    public function get_versions_text_text_next_sentence_prediction_get (): String {
        // create path and map variables
        var path: String = "/text/text/next-sentence-prediction/".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();


        
        
        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_versions_text_text_next_sentence_prediction_get";

        token.returnType = Object;
        return requestId;

    }
}
}
