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

import { Observable } from 'rxjs';
import { BaseAPI, RequiredError, HttpHeaders, HttpQuery, COLLECTION_FORMATS } from '../runtime';
import {
    HTTPValidationError,
} from '../models';

export interface ApplyImageImageBackgroundRemovalPostRequest {
    image: Blob;
    model?: ApplyImageImageBackgroundRemovalPostModelEnum;
}

/**
 * no description
 */
export class ImageImageBackgroundRemovalApi extends BaseAPI {

    /**
     * Apply model for the background-removal task for a given models
     */
    applyImageImageBackgroundRemovalPost(requestParameters: ApplyImageImageBackgroundRemovalPostRequest): Observable<object> {
        if (requestParameters.image === null || requestParameters.image === undefined) {
            throw new RequiredError('image','Required parameter requestParameters.image was null or undefined when calling applyImageImageBackgroundRemovalPost.');
        }

        const queryParameters: HttpQuery = {};

        if (requestParameters.model !== undefined && requestParameters.model !== null) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: HttpHeaders = {};

        const formData = new FormData();
        if (requestParameters.image !== undefined) {
            formData.append('image', requestParameters.image as any);
        }

        return this.request<object>({
            path: `/image/image/background-removal/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formData,
        });
    }

    /**
     * Get list of models available for background-removal
     */
    getVersionsImageImageBackgroundRemovalGet(): Observable<object> {
        const queryParameters: HttpQuery = {};

        const headerParameters: HttpHeaders = {};

        return this.request<object>({
            path: `/image/image/background-removal/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        });
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
