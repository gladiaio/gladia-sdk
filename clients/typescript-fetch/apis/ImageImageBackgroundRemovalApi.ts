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


import * as runtime from '../runtime';
import {
    HTTPValidationError,
    HTTPValidationErrorFromJSON,
    HTTPValidationErrorToJSON,
} from '../models';

export interface ApplyImageImageBackgroundRemovalPostRequest {
    image: Blob;
    model?: ApplyImageImageBackgroundRemovalPostModelEnum;
}

/**
 * no description
 */
export class ImageImageBackgroundRemovalApi extends runtime.BaseAPI {

    /**
     * Apply model for the background-removal task for a given models
     */
    async applyImageImageBackgroundRemovalPostRaw(requestParameters: ApplyImageImageBackgroundRemovalPostRequest): Promise<runtime.ApiResponse<object>> {
        if (requestParameters.image === null || requestParameters.image === undefined) {
            throw new runtime.RequiredError('image','Required parameter requestParameters.image was null or undefined when calling applyImageImageBackgroundRemovalPost.');
        }

        const queryParameters: runtime.HTTPQuery = {};

        if (requestParameters.model !== undefined) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const formData = new FormData();
        if (requestParameters.image !== undefined) {
            formData.append('image', requestParameters.image as any);
        }

        const response = await this.request({
            path: `/image/image/background-removal/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formData,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Apply model for the background-removal task for a given models
     */
    async applyImageImageBackgroundRemovalPost(requestParameters: ApplyImageImageBackgroundRemovalPostRequest): Promise<object> {
        const response = await this.applyImageImageBackgroundRemovalPostRaw(requestParameters);
        return await response.value();
    }

    /**
     * Get list of models available for background-removal
     */
    async getVersionsImageImageBackgroundRemovalGetRaw(): Promise<runtime.ApiResponse<object>> {
        const queryParameters: runtime.HTTPQuery = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/image/image/background-removal/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Get list of models available for background-removal
     */
    async getVersionsImageImageBackgroundRemovalGet(): Promise<object> {
        const response = await this.getVersionsImageImageBackgroundRemovalGetRaw();
        return await response.value();
    }

}

/**
    * @export
    * @enum {string}
    */
export enum ApplyImageImageBackgroundRemovalPostModelEnum {
    Xception = 'xception',
    Mobilenet = 'mobilenet'
}
