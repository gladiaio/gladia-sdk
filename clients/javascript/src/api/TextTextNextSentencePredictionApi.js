/**
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import HTTPValidationError from '../model/HTTPValidationError';

/**
* TextTextNextSentencePrediction service.
* @module api/TextTextNextSentencePredictionApi
* @version 0.1.0
*/
export default class TextTextNextSentencePredictionApi {

    /**
    * Constructs a new TextTextNextSentencePredictionApi. 
    * @alias module:api/TextTextNextSentencePredictionApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the applyTextTextNextSentencePredictionPost operation.
     * @callback module:api/TextTextNextSentencePredictionApi~applyTextTextNextSentencePredictionPostCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Apply model for the next-sentence-prediction task for a given models
     * @param {Object} opts Optional parameters
     * @param {String} opts.sentence1  (default to 'I like you.')
     * @param {String} opts.sentence2  (default to 'But it's not about you.')
     * @param {module:model/String} opts.model  (default to 'bert-base-uncased')
     * @param {module:api/TextTextNextSentencePredictionApi~applyTextTextNextSentencePredictionPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    applyTextTextNextSentencePredictionPost(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'sentence_1': opts['sentence1'],
        'sentence_2': opts['sentence2'],
        'model': opts['model']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/text/text/next-sentence-prediction/', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getVersionsTextTextNextSentencePredictionGet operation.
     * @callback module:api/TextTextNextSentencePredictionApi~getVersionsTextTextNextSentencePredictionGetCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get list of models available for next-sentence-prediction
     * @param {module:api/TextTextNextSentencePredictionApi~getVersionsTextTextNextSentencePredictionGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    getVersionsTextTextNextSentencePredictionGet(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/text/text/next-sentence-prediction/', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
