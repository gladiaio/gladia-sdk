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

export interface ApplyTextTextKeywordExtractionPostRequest {
    text?: string;
    model?: ApplyTextTextKeywordExtractionPostModelEnum;
}

/**
 * no description
 */
export class TextTextKeywordExtractionApi extends runtime.BaseAPI {

    /**
     * Apply model for the keyword-extraction task for a given models
     */
    async applyTextTextKeywordExtractionPostRaw(requestParameters: ApplyTextTextKeywordExtractionPostRequest): Promise<runtime.ApiResponse<object>> {
        const queryParameters: runtime.HTTPQuery = {};

        if (requestParameters.text !== undefined) {
            queryParameters['text'] = requestParameters.text;
        }

        if (requestParameters.model !== undefined) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/text/text/keyword-extraction/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Apply model for the keyword-extraction task for a given models
     */
    async applyTextTextKeywordExtractionPost(requestParameters: ApplyTextTextKeywordExtractionPostRequest): Promise<object> {
        const response = await this.applyTextTextKeywordExtractionPostRaw(requestParameters);
        return await response.value();
    }

    /**
     * Get list of models available for keyword-extraction
     */
    async getVersionsTextTextKeywordExtractionGetRaw(): Promise<runtime.ApiResponse<object>> {
        const queryParameters: runtime.HTTPQuery = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/text/text/keyword-extraction/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Get list of models available for keyword-extraction
     */
    async getVersionsTextTextKeywordExtractionGet(): Promise<object> {
        const response = await this.getVersionsTextTextKeywordExtractionGetRaw();
        return await response.value();
    }

}

/**
    * @export
    * @enum {string}
    */
export enum ApplyTextTextKeywordExtractionPostModelEnum {
    MiniLML6V2 = 'keybert-paraphrase-MiniLM-L6-v2',
    MultilingualMiniLML12V2 = 'keybert-paraphrase-multilingual-MiniLM-L12-v2'
}
