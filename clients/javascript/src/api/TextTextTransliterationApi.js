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
* TextTextTransliteration service.
* @module api/TextTextTransliterationApi
* @version 0.1.0
*/
export default class TextTextTransliterationApi {

    /**
    * Constructs a new TextTextTransliterationApi. 
    * @alias module:api/TextTextTransliterationApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the applyTextTextTransliterationPost operation.
     * @callback module:api/TextTextTransliterationApi~applyTextTextTransliterationPostCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Apply model for the transliteration task for a given models
     * @param {Object} opts Optional parameters
     * @param {String} opts.text  (default to 'Лорем ипсум долор сит амет')
     * @param {String} opts.language  (default to 'ru')
     * @param {String} opts.model  (default to 'transliterate')
     * @param {module:api/TextTextTransliterationApi~applyTextTextTransliterationPostCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    applyTextTextTransliterationPost(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'text': opts['text'],
        'language': opts['language'],
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
        '/text/text/transliteration/', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getVersionsTextTextTransliterationGet operation.
     * @callback module:api/TextTextTransliterationApi~getVersionsTextTextTransliterationGetCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get list of models available for transliteration
     * @param {module:api/TextTextTransliterationApi~getVersionsTextTextTransliterationGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    getVersionsTextTextTransliterationGet(callback) {
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
        '/text/text/transliteration/', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
