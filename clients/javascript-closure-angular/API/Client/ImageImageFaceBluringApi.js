/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.ImageImageFaceBluringApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * Version: 0.1.0
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.ImageImageFaceBluringApi');

goog.require('API.Client.HTTPValidationError');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.ImageImageFaceBluringApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('ImageImageFaceBluringApiBasePath') ?
                   /** @type {!string} */ ($injector.get('ImageImageFaceBluringApiBasePath')) :
                   'http://localhost';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('ImageImageFaceBluringApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('ImageImageFaceBluringApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.ImageImageFaceBluringApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Apply model for the face-bluring task for a given models
 * 
 * @param {!Object} image 
 * @param {!string=} opt_model 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.ImageImageFaceBluringApi.prototype.applyImageImageFaceBluringPost = function(image, opt_model, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/image/image/face-bluring/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  /** @type {!Object} */
  var formParams = {};

  // verify required parameter 'image' is set
  if (!image) {
    throw new Error('Missing required parameter image when calling applyImageImageFaceBluringPost');
  }
  if (opt_model !== undefined) {
    queryParameters['model'] = opt_model;
  }

  headerParams['Content-Type'] = 'application/x-www-form-urlencoded';

  formParams['image'] = image;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: false,
        data: this.httpParamSerializer(formParams),
    params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Get list of models available for face-bluring
 * 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Object>}
 */
API.Client.ImageImageFaceBluringApi.prototype.getVersionsImageImageFaceBluringGet = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/image/image/face-bluring/';

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
