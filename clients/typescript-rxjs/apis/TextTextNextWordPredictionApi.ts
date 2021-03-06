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

export interface ApplyTextTextNextWordPredictionPostRequest {
    sentence?: string;
    model?: ApplyTextTextNextWordPredictionPostModelEnum;
}

/**
 * no description
 */
export class TextTextNextWordPredictionApi extends BaseAPI {

    /**
     * Apply model for the next-word-prediction task for a given models
     */
    applyTextTextNextWordPredictionPost(requestParameters: ApplyTextTextNextWordPredictionPostRequest): Observable<object> {
        const queryParameters: HttpQuery = {};

        if (requestParameters.sentence !== undefined && requestParameters.sentence !== null) {
            queryParameters['sentence'] = requestParameters.sentence;
        }

        if (requestParameters.model !== undefined && requestParameters.model !== null) {
            queryParameters['model'] = requestParameters.model;
        }

        const headerParameters: HttpHeaders = {};

        return this.request<object>({
            path: `/text/text/next-word-prediction/`,
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
        });
    }

    /**
     * Get list of models available for next-word-prediction
     */
    getVersionsTextTextNextWordPredictionGet(): Observable<object> {
        const queryParameters: HttpQuery = {};

        const headerParameters: HttpHeaders = {};

        return this.request<object>({
            path: `/text/text/next-word-prediction/`,
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
export enum ApplyTextTextNextWordPredictionPostModelEnum {
    BertBaseUncased = 'bert-base-uncased',
    AlbertBaseV2 = 'albert-base-v2',
    DistilbertBaseUncased = 'distilbert-base-uncased',
    RobertaBase = 'roberta-base'
}
