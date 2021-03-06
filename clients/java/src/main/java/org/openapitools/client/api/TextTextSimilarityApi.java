/*
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiCallback;
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.ApiResponse;
import org.openapitools.client.Configuration;
import org.openapitools.client.Pair;
import org.openapitools.client.ProgressRequestBody;
import org.openapitools.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import org.openapitools.client.model.HTTPValidationError;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TextTextSimilarityApi {
    private ApiClient localVarApiClient;

    public TextTextSimilarityApi() {
        this(Configuration.getDefaultApiClient());
    }

    public TextTextSimilarityApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    /**
     * Build call for applyTextTextSimilarityPost
     * @param sentence1  (optional, default to &quot;I like Python because I can build AI applications&quot;)
     * @param sentence2  (optional, default to &quot;Second sentence to compare to&quot;)
     * @param model  (optional, default to all-MiniLM-L6-v2)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call applyTextTextSimilarityPostCall(String sentence1, String sentence2, String model, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/text/text/similarity/";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (sentence1 != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("sentence_1", sentence1));
        }

        if (sentence2 != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("sentence_2", sentence2));
        }

        if (model != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("model", model));
        }

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call applyTextTextSimilarityPostValidateBeforeCall(String sentence1, String sentence2, String model, final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = applyTextTextSimilarityPostCall(sentence1, sentence2, model, _callback);
        return localVarCall;

    }

    /**
     * Apply model for the similarity task for a given models
     * 
     * @param sentence1  (optional, default to &quot;I like Python because I can build AI applications&quot;)
     * @param sentence2  (optional, default to &quot;Second sentence to compare to&quot;)
     * @param model  (optional, default to all-MiniLM-L6-v2)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Object applyTextTextSimilarityPost(String sentence1, String sentence2, String model) throws ApiException {
        ApiResponse<Object> localVarResp = applyTextTextSimilarityPostWithHttpInfo(sentence1, sentence2, model);
        return localVarResp.getData();
    }

    /**
     * Apply model for the similarity task for a given models
     * 
     * @param sentence1  (optional, default to &quot;I like Python because I can build AI applications&quot;)
     * @param sentence2  (optional, default to &quot;Second sentence to compare to&quot;)
     * @param model  (optional, default to all-MiniLM-L6-v2)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Object> applyTextTextSimilarityPostWithHttpInfo(String sentence1, String sentence2, String model) throws ApiException {
        okhttp3.Call localVarCall = applyTextTextSimilarityPostValidateBeforeCall(sentence1, sentence2, model, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Apply model for the similarity task for a given models (asynchronously)
     * 
     * @param sentence1  (optional, default to &quot;I like Python because I can build AI applications&quot;)
     * @param sentence2  (optional, default to &quot;Second sentence to compare to&quot;)
     * @param model  (optional, default to all-MiniLM-L6-v2)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call applyTextTextSimilarityPostAsync(String sentence1, String sentence2, String model, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = applyTextTextSimilarityPostValidateBeforeCall(sentence1, sentence2, model, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getVersionsTextTextSimilarityGet
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call getVersionsTextTextSimilarityGetCall(final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/text/text/similarity/";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call getVersionsTextTextSimilarityGetValidateBeforeCall(final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getVersionsTextTextSimilarityGetCall(_callback);
        return localVarCall;

    }

    /**
     * Get list of models available for similarity
     * 
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Object getVersionsTextTextSimilarityGet() throws ApiException {
        ApiResponse<Object> localVarResp = getVersionsTextTextSimilarityGetWithHttpInfo();
        return localVarResp.getData();
    }

    /**
     * Get list of models available for similarity
     * 
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Object> getVersionsTextTextSimilarityGetWithHttpInfo() throws ApiException {
        okhttp3.Call localVarCall = getVersionsTextTextSimilarityGetValidateBeforeCall(null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get list of models available for similarity (asynchronously)
     * 
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call getVersionsTextTextSimilarityGetAsync(final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = getVersionsTextTextSimilarityGetValidateBeforeCall(_callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
