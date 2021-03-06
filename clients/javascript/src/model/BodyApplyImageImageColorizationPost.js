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
 * The BodyApplyImageImageColorizationPost model module.
 * @module model/BodyApplyImageImageColorizationPost
 * @version 0.1.0
 */
class BodyApplyImageImageColorizationPost {
    /**
     * Constructs a new <code>BodyApplyImageImageColorizationPost</code>.
     * @alias module:model/BodyApplyImageImageColorizationPost
     * @param image {File} 
     */
    constructor(image) { 
        
        BodyApplyImageImageColorizationPost.initialize(this, image);
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
     * Constructs a <code>BodyApplyImageImageColorizationPost</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BodyApplyImageImageColorizationPost} obj Optional instance to populate.
     * @return {module:model/BodyApplyImageImageColorizationPost} The populated <code>BodyApplyImageImageColorizationPost</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BodyApplyImageImageColorizationPost();

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
BodyApplyImageImageColorizationPost.prototype['image'] = undefined;






export default BodyApplyImageImageColorizationPost;

