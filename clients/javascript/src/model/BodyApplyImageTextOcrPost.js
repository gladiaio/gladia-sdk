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
 * The BodyApplyImageTextOcrPost model module.
 * @module model/BodyApplyImageTextOcrPost
 * @version 0.1.0
 */
class BodyApplyImageTextOcrPost {
    /**
     * Constructs a new <code>BodyApplyImageTextOcrPost</code>.
     * @alias module:model/BodyApplyImageTextOcrPost
     * @param image {File} 
     */
    constructor(image) { 
        
        BodyApplyImageTextOcrPost.initialize(this, image);
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
     * Constructs a <code>BodyApplyImageTextOcrPost</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BodyApplyImageTextOcrPost} obj Optional instance to populate.
     * @return {module:model/BodyApplyImageTextOcrPost} The populated <code>BodyApplyImageTextOcrPost</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BodyApplyImageTextOcrPost();

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
BodyApplyImageTextOcrPost.prototype['image'] = undefined;






export default BodyApplyImageTextOcrPost;

