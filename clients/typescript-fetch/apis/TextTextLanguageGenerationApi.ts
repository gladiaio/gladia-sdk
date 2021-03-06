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

export interface ApplyTextTextLanguageGenerationPostRequest {
    text?: string;
    model?: ApplyTextTextLanguageGenerationPostModelEnum;
}

/**
 * no description
 */
export class TextTextLanguageGenerationApi extends runtime.BaseAPI {

    /**
     * Apply model for the language-generation task for a given models
     */
    async applyTextTextLanguageGenerationPostRaw(requestParameters: ApplyTextTextLanguageGenerationPostRequest): Promise<runtime.ApiResponse<object>> {
        const queryParameters: runtime.HTTPQuery = {};

        if (requestParameters.text !== undefined) {
            queryParameters['text'] = requestParameters.text;
        }

        if (requestParameters.model !== undefined) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/text/text/language-generation/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Apply model for the language-generation task for a given models
     */
    async applyTextTextLanguageGenerationPost(requestParameters: ApplyTextTextLanguageGenerationPostRequest): Promise<object> {
        const response = await this.applyTextTextLanguageGenerationPostRaw(requestParameters);
        return await response.value();
    }

    /**
     * Get list of models available for language-generation
     */
    async getVersionsTextTextLanguageGenerationGetRaw(): Promise<runtime.ApiResponse<object>> {
        const queryParameters: runtime.HTTPQuery = {};

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/text/text/language-generation/`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.TextApiResponse(response);
    }

    /**
     * Get list of models available for language-generation
     */
    async getVersionsTextTextLanguageGenerationGet(): Promise<object> {
        const response = await this.getVersionsTextTextLanguageGenerationGetRaw();
        return await response.value();
    }

}

/**
    * @export
    * @enum {string}
    */
export enum ApplyTextTextLanguageGenerationPostModelEnum {
    EleutherAIGptNeo27B = 'EleutherAI-gpt-neo-2_7B'
}
