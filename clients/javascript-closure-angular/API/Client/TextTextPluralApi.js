/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.TextTextPluralApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * Version: 0.1.0
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.TextTextPluralApi');

goog.require('API.Client.HTTPValidationError');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.TextTextPluralApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('TextTextPluralApiBasePath') ?
                   /** @type {!string} */ ($injector.get('TextTextPluralApiBasePath')) :
                   'http://localhost';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('TextTextPluralApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('TextTextPluralApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.TextTextPluralApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Apply model for the plural task for a given models
 * 
 * @param {!string=} opt_word 
 * @param {!number=} opt_count 
 * @param {!string=} opt_model 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.TextTextPluralApi.prototype.applyTextTextPluralPost = function(opt_word, opt_count, opt_model, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/text/text/plural/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_word !== undefined) {
    queryParameters['word'] = opt_word;
  }

  if (opt_count !== undefined) {
    queryParameters['count'] = opt_count;
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
 * Get list of models available for plural
 * 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.TextTextPluralApi.prototype.getVersionsTextTextPluralGet = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/text/text/plural/';

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
