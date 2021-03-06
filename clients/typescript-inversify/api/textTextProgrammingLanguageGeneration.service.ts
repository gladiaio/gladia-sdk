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
/* tslint:disable:no-unused-variable member-ordering */

import { Observable } from "rxjs/Observable";
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';
import IHttpClient from "../IHttpClient";
import { inject, injectable } from "inversify";
import { IAPIConfiguration } from "../IAPIConfiguration";
import { Headers } from "../Headers";
import HttpResponse from "../HttpResponse";

import { HTTPValidationError } from '../model/hTTPValidationError';

import { COLLECTION_FORMATS }  from '../variables';



@injectable()
export class TextTextProgrammingLanguageGenerationService {
    private basePath: string = 'http://localhost';

    constructor(@inject("IApiHttpClient") private httpClient: IHttpClient,
        @inject("IAPIConfiguration") private APIConfiguration: IAPIConfiguration ) {
        if(this.APIConfiguration.basePath)
            this.basePath = this.APIConfiguration.basePath;
    }

    /**
     * Apply model for the programming-language-generation task for a given models
     * 
     * @param codeSnippet 
     * @param model 
     
     */
    public applyTextTextProgrammingLanguageGenerationPost(codeSnippet?: string, model?: 'sentdex-GPyT', observe?: 'body', headers?: Headers): Observable<object>;
    public applyTextTextProgrammingLanguageGenerationPost(codeSnippet?: string, model?: 'sentdex-GPyT', observe?: 'response', headers?: Headers): Observable<HttpResponse<object>>;
    public applyTextTextProgrammingLanguageGenerationPost(codeSnippet?: string, model?: 'sentdex-GPyT', observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (codeSnippet !== undefined) {
            queryParameters.push("codeSnippet="+encodeURIComponent(String(codeSnippet)));
        }
        if (model !== undefined) {
            queryParameters.push("model="+encodeURIComponent(String(model)));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<object>> = this.httpClient.post(`${this.basePath}/text/text/programming-language-generation/?${queryParameters.join('&')}`, headers);
        if (observe == 'body') {
               return response.map(httpResponse => <object>(httpResponse.response));
        }
        return response;
    }


    /**
     * Get list of models available for programming-language-generation
     * 
     
     */
    public getVersionsTextTextProgrammingLanguageGenerationGet(observe?: 'body', headers?: Headers): Observable<object>;
    public getVersionsTextTextProgrammingLanguageGenerationGet(observe?: 'response', headers?: Headers): Observable<HttpResponse<object>>;
    public getVersionsTextTextProgrammingLanguageGenerationGet(observe: any = 'body', headers: Headers = {}): Observable<any> {
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<object>> = this.httpClient.get(`${this.basePath}/text/text/programming-language-generation/`, headers);
        if (observe == 'body') {
               return response.map(httpResponse => <object>(httpResponse.response));
        }
        return response;
    }

}
