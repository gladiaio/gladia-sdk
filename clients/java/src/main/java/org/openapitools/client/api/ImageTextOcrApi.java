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


import java.io.File;
import org.openapitools.client.model.HTTPValidationError;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ImageTextOcrApi {
    private ApiClient localVarApiClient;

    public ImageTextOcrApi() {
        this(Configuration.getDefaultApiClient());
    }

    public ImageTextOcrApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    /**
     * Build call for applyImageTextOcrPost
     * @param image  (required)
     * @param sourceLanguage  (optional, default to &quot;en&quot;)
     * @param model  (optional, default to easy-ocr)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call applyImageTextOcrPostCall(File image, String sourceLanguage, String model, final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/image/text/ocr/";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (sourceLanguage != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("source_language", sourceLanguage));
        }

        if (model != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("model", model));
        }

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        if (image != null) {
            localVarFormParams.put("image", image);
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "multipart/form-data"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        String[] localVarAuthNames = new String[] {  };
        return localVarApiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call applyImageTextOcrPostValidateBeforeCall(File image, String sourceLanguage, String model, final ApiCallback _callback) throws ApiException {
        
        // verify the required parameter 'image' is set
        if (image == null) {
            throw new ApiException("Missing the required parameter 'image' when calling applyImageTextOcrPost(Async)");
        }
        

        okhttp3.Call localVarCall = applyImageTextOcrPostCall(image, sourceLanguage, model, _callback);
        return localVarCall;

    }

    /**
     * Apply model for the ocr task for a given models
     * 
     * @param image  (required)
     * @param sourceLanguage  (optional, default to &quot;en&quot;)
     * @param model  (optional, default to easy-ocr)
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Object applyImageTextOcrPost(File image, String sourceLanguage, String model) throws ApiException {
        ApiResponse<Object> localVarResp = applyImageTextOcrPostWithHttpInfo(image, sourceLanguage, model);
        return localVarResp.getData();
    }

    /**
     * Apply model for the ocr task for a given models
     * 
     * @param image  (required)
     * @param sourceLanguage  (optional, default to &quot;en&quot;)
     * @param model  (optional, default to easy-ocr)
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Object> applyImageTextOcrPostWithHttpInfo(File image, String sourceLanguage, String model) throws ApiException {
        okhttp3.Call localVarCall = applyImageTextOcrPostValidateBeforeCall(image, sourceLanguage, model, null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Apply model for the ocr task for a given models (asynchronously)
     * 
     * @param image  (required)
     * @param sourceLanguage  (optional, default to &quot;en&quot;)
     * @param model  (optional, default to easy-ocr)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call applyImageTextOcrPostAsync(File image, String sourceLanguage, String model, final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = applyImageTextOcrPostValidateBeforeCall(image, sourceLanguage, model, _callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
    /**
     * Build call for getVersionsImageTextOcrGet
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public okhttp3.Call getVersionsImageTextOcrGetCall(final ApiCallback _callback) throws ApiException {
        Object localVarPostBody = new Object();

        // create path and map variables
        String localVarPath = "/image/text/ocr/";

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
    private okhttp3.Call getVersionsImageTextOcrGetValidateBeforeCall(final ApiCallback _callback) throws ApiException {
        

        okhttp3.Call localVarCall = getVersionsImageTextOcrGetCall(_callback);
        return localVarCall;

    }

    /**
     * Get list of models available for ocr
     * 
     * @return Object
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Object getVersionsImageTextOcrGet() throws ApiException {
        ApiResponse<Object> localVarResp = getVersionsImageTextOcrGetWithHttpInfo();
        return localVarResp.getData();
    }

    /**
     * Get list of models available for ocr
     * 
     * @return ApiResponse&lt;Object&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Object> getVersionsImageTextOcrGetWithHttpInfo() throws ApiException {
        okhttp3.Call localVarCall = getVersionsImageTextOcrGetValidateBeforeCall(null);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Get list of models available for ocr (asynchronously)
     * 
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public okhttp3.Call getVersionsImageTextOcrGetAsync(final ApiCallback<Object> _callback) throws ApiException {

        okhttp3.Call localVarCall = getVersionsImageTextOcrGetValidateBeforeCall(_callback);
        Type localVarReturnType = new TypeToken<Object>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
