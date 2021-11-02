/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.TextTextTranslationApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * Version: 0.1.0
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.TextTextTranslationApi');

goog.require('API.Client.HTTPValidationError');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.TextTextTranslationApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('TextTextTranslationApiBasePath') ?
                   /** @type {!string} */ ($injector.get('TextTextTranslationApiBasePath')) :
                   'http://localhost';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('TextTextTranslationApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('TextTextTranslationApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.TextTextTranslationApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Apply model for the translation task for a given models
 * 
 * @param {!string=} opt_inputString 
 * @param {!string=} opt_sourceLanguage 
 * @param {!string=} opt_targetLanguage 
 * @param {!string=} opt_model 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.TextTextTranslationApi.prototype.applyTextTextTranslationPost = function(opt_inputString, opt_sourceLanguage, opt_targetLanguage, opt_model, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/text/text/translation/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_inputString !== undefined) {
    queryParameters['input_string'] = opt_inputString;
  }

  if (opt_sourceLanguage !== undefined) {
    queryParameters['source_language'] = opt_sourceLanguage;
  }

  if (opt_targetLanguage !== undefined) {
    queryParameters['target_language'] = opt_targetLanguage;
  }

  if (opt_model !== undefined) {
    queryParameters['model'] = opt_model;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Get list of models available for translation
 * 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.TextTextTranslationApi.prototype.getVersionsTextTextTranslationGet = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/text/text/translation/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
