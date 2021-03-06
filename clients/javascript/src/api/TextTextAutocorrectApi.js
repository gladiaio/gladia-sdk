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
* TextTextAutocorrect service.
* @module api/TextTextAutocorrectApi
* @version 0.1.0
*/
export default class TextTextAutocorrectApi {

    /**
    * Constructs a new TextTextAutocorrectApi. 
    * @alias module:api/TextTextAutocorrectApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the applyTextTextAutocorrectPost operation.
     * @callback module:api/TextTextAutocorrectApi~applyTextTextAutocorrectPostCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Apply model for the autocorrect task for a given models
     * @param {Object} opts Optional parameters
     * @param {String} opts.sentence  (default to 'Text to corrcte')
     * @param {module:model/String} opts.model  (default to 'flexudy-t5-base-multi-sentence-doctor')
     * @param {module:api/TextTextAutocorrectApi~applyTextTextAutocorrectPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    applyTextTextAutocorrectPost(opts, callback) {
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
        '/text/text/autocorrect/', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getVersionsTextTextAutocorrectGet operation.
     * @callback module:api/TextTextAutocorrectApi~getVersionsTextTextAutocorrectGetCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get list of models available for autocorrect
     * @param {module:api/TextTextAutocorrectApi~getVersionsTextTextAutocorrectGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    getVersionsTextTextAutocorrectGet(callback) {
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
        '/text/text/autocorrect/', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
