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

export interface ApplyImageImageUncolorizationPostRequest {
    image: Blob;
    model?: ApplyImageImageUncolorizationPostModelEnum;
}

/**
 * no description
 */
export class ImageImageUncolorizationApi extends BaseAPI {

    /**
     * Apply model for the uncolorization task for a given models
     */
    applyImageImageUncolorizationPost(requestParameters: ApplyImageImageUncolorizationPostRequest): Observable<object> {
        if (requestParameters.image === null || requestParameters.image === undefined) {
            throw new RequiredError('image','Required parameter requestParameters.image was null or undefined when calling applyImageImageUncolorizationPost.');
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
            path: `/image/image/uncolorization/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formData,
        });
    }

    /**
     * Get list of models available for uncolorization
     */
    getVersionsImageImageUncolorizationGet(): Observable<object> {
        const queryParameters: HttpQuery = {};

        const headerParameters: HttpHeaders = {};

        return this.request<object>({
            path: `/image/image/uncolorization/`,
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
export enum ApplyImageImageUncolorizationPostModelEnum {
    V1 = 'v1'
}
