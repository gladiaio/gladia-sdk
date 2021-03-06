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

import ApiClient from '../ApiClient';

/**
 * The BodyApplyImageImageUncolorizationPost model module.
 * @module model/BodyApplyImageImageUncolorizationPost
 * @version 0.1.0
 */
class BodyApplyImageImageUncolorizationPost {
    /**
     * Constructs a new <code>BodyApplyImageImageUncolorizationPost</code>.
     * @alias module:model/BodyApplyImageImageUncolorizationPost
     * @param image {File} 
     */
    constructor(image) { 
        
        BodyApplyImageImageUncolorizationPost.initialize(this, image);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, image) { 
        obj['image'] = image;
    }

    /**
     * Constructs a <code>BodyApplyImageImageUncolorizationPost</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BodyApplyImageImageUncolorizationPost} obj Optional instance to populate.
     * @return {module:model/BodyApplyImageImageUncolorizationPost} The populated <code>BodyApplyImageImageUncolorizationPost</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BodyApplyImageImageUncolorizationPost();

            if (data.hasOwnProperty('image')) {
                obj['image'] = ApiClient.convertToType(data['image'], File);
            }
        }
        return obj;
    }


}

/**
 * @member {File} image
 */
BodyApplyImageImageUncolorizationPost.prototype['image'] = undefined;






export default BodyApplyImageImageUncolorizationPost;

