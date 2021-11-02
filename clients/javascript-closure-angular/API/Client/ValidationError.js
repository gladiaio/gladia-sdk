goog.provide('API.Client.ValidationError');

/**
 * @record
 */
API.Client.ValidationError = function() {}

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.ValidationError.prototype.loc;

/**
 * @type {!string}
 * @export
 */
API.Client.ValidationError.prototype.msg;

/**
 * @type {!string}
 * @export
 */
API.Client.ValidationError.prototype.type;

