// tslint:disable
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
 */

import { exists } from '../runtime';
/**
 * 
 * @export
 * @interface BodyApplyImageImageFaceBluringPost
 */
export interface BodyApplyImageImageFaceBluringPost {
    /**
     * 
     * @type {Blob}
     * @memberof BodyApplyImageImageFaceBluringPost
     */
    image: Blob;
}

export function BodyApplyImageImageFaceBluringPostFromJSON(json: any): BodyApplyImageImageFaceBluringPost {
    return {
        'image': json['image'],
    };
}

export function BodyApplyImageImageFaceBluringPostToJSON(value?: BodyApplyImageImageFaceBluringPost): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'image': value.image,
    };
}


