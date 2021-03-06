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

export interface ApplyTextTextNamedEntityRecognitionPostRequest {
    text?: string;
    model?: ApplyTextTextNamedEntityRecognitionPostModelEnum;
}

/**
 * no description
 */
export class TextTextNamedEntityRecognitionApi extends BaseAPI {

    /**
     * Apply model for the named-entity-recognition task for a given models
     */
    applyTextTextNamedEntityRecognitionPost(requestParameters: ApplyTextTextNamedEntityRecognitionPostRequest): Observable<object> {
        const queryParameters: HttpQuery = {};

        if (requestParameters.text !== undefined && requestParameters.text !== null) {
            queryParameters['text'] = requestParameters.text;
        }

        if (requestParameters.model !== undefined && requestParameters.model !== null) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: HttpHeaders = {};

        return this.request<object>({
            path: `/text/text/named-entity-recognition/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
        });
    }

    /**
     * Get list of models available for named-entity-recognition
     */
    getVersionsTextTextNamedEntityRecognitionGet(): Observable<object> {
        const queryParameters: HttpQuery = {};

        const headerParameters: HttpHeaders = {};

        return this.request<object>({
            path: `/text/text/named-entity-recognition/`,
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
export enum ApplyTextTextNamedEntityRecognitionPostModelEnum {
    DbmdzBertLargeCasedFinetunedConll03English = 'dbmdz-bert-large-cased-finetuned-conll03-english'
}
