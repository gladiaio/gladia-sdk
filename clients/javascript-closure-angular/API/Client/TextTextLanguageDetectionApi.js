/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.TextTextLanguageDetectionApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * Version: 0.1.0
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.TextTextLanguageDetectionApi');

goog.require('API.Client.HTTPValidationError');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.TextTextLanguageDetectionApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('TextTextLanguageDetectionApiBasePath') ?
                   /** @type {!string} */ ($injector.get('TextTextLanguageDetectionApiBasePath')) :
                   'http://localhost';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('TextTextLanguageDetectionApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('TextTextLanguageDetectionApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.TextTextLanguageDetectionApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Apply model for the language-detection task for a given models
 * 
 * @param {!string=} opt_text 
 * @param {!string=} opt_model 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.TextTextLanguageDetectionApi.prototype.applyTextTextLanguageDetectionPost = function(opt_text, opt_model, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/text/text/language-detection/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_text !== undefined) {
    queryParameters['text'] = opt_text;
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
 * Get list of models available for language-detection
 * 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.TextTextLanguageDetectionApi.prototype.getVersionsTextTextLanguageDetectionGet = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/text/text/language-detection/';

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
