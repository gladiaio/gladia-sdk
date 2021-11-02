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
* TextTextSentencePairModeling service.
* @module api/TextTextSentencePairModelingApi
* @version 0.1.0
*/
export default class TextTextSentencePairModelingApi {

    /**
    * Constructs a new TextTextSentencePairModelingApi. 
    * @alias module:api/TextTextSentencePairModelingApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the applyTextTextSentencePairModelingPost operation.
     * @callback module:api/TextTextSentencePairModelingApi~applyTextTextSentencePairModelingPostCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Apply model for the sentence-pair-modeling task for a given models
     * @param {Object} opts Optional parameters
     * @param {String} opts.sentence  (default to 'Once, a group of frogs was roaming around the forest in search of water.')
     * @param {String} opts.model  (default to 'UKPLab-all-MiniLM-L6-v2')
     * @param {module:api/TextTextSentencePairModelingApi~applyTextTextSentencePairModelingPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    applyTextTextSentencePairModelingPost(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'sentence': opts['sentence'],
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
        '/text/text/sentence-pair-modeling/', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getVersionsTextTextSentencePairModelingGet operation.
     * @callback module:api/TextTextSentencePairModelingApi~getVersionsTextTextSentencePairModelingGetCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get list of models available for sentence-pair-modeling
     * @param {module:api/TextTextSentencePairModelingApi~getVersionsTextTextSentencePairModelingGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    getVersionsTextTextSentencePairModelingGet(callback) {
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
        '/text/text/sentence-pair-modeling/', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
