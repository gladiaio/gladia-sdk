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

export interface ApplyImageTextOcrPostRequest {
    image: Blob;
    sourceLanguage?: string;
    model?: ApplyImageTextOcrPostModelEnum;
}

/**
 * no description
 */
export class ImageTextOcrApi extends runtime.BaseAPI {

    /**
     * Apply model for the ocr task for a given models
     */
    async applyImageTextOcrPostRaw(requestParameters: ApplyImageTextOcrPostRequest): Promise<runtime.ApiResponse<object>> {
        if (requestParameters.image === null || requestParameters.image === undefined) {
            throw new runtime.RequiredError('image','Required parameter requestParameters.image was null or undefined when calling applyImageTextOcrPost.');
        }

        const queryParameters: runtime.HTTPQuery = {};

        if (requestParameters.sourceLanguage !== undefined) {
            queryParameters['source_language'] = requestParameters.sourceLanguage;
        }

        if (requestParameters.model !== undefined) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const formData = new FormData();
        if (requestParameters.image !== undefined) {
            formData.append('image', requestParameters.image as any);
        }

        const response = await this.request({
            path: `/image/text/ocr/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: formData,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Apply model for the ocr task for a given models
     */
    async applyImageTextOcrPost(requestParameters: ApplyImageTextOcrPostRequest): Promise<object> {
        const response = await this.applyImageTextOcrPostRaw(requestParameters);
        return await response.value();
    }

    /**
     * Get list of models available for ocr
     */
    async getVersionsImageTextOcrGetRaw(): Promise<runtime.ApiResponse<object>> {
        const queryParameters: runtime.HTTPQuery = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/image/text/ocr/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Get list of models available for ocr
     */
    async getVersionsImageTextOcrGet(): Promise<object> {
        const response = await this.getVersionsImageTextOcrGetRaw();
        return await response.value();
    }

}

/**
    * @export
    * @enum {string}
    */
export enum ApplyImageTextOcrPostModelEnum {
    TesseractDefault = 'tesseract-default',
    TesseractDenoising = 'tesseract-denoising',
    EasyOcr = 'easy-ocr'
}
