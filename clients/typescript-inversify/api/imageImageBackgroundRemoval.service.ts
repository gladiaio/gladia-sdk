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
export class ImageImageBackgroundRemovalService {
    private basePath: string = 'http://localhost';

    constructor(@inject("IApiHttpClient") private httpClient: IHttpClient,
        @inject("IAPIConfiguration") private APIConfiguration: IAPIConfiguration ) {
        if(this.APIConfiguration.basePath)
            this.basePath = this.APIConfiguration.basePath;
    }

    /**
     * Apply model for the background-removal task for a given models
     * 
     * @param image 
     * @param model 
     
     */
    public applyImageImageBackgroundRemovalPost(image: Blob, model?: 'mobilenet' | 'xception', observe?: 'body', headers?: Headers): Observable<object>;
    public applyImageImageBackgroundRemovalPost(image: Blob, model?: 'mobilenet' | 'xception', observe?: 'response', headers?: Headers): Observable<HttpResponse<object>>;
    public applyImageImageBackgroundRemovalPost(image: Blob, model?: 'mobilenet' | 'xception', observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (!image){
            throw new Error('Required parameter image was null or undefined when calling applyImageImageBackgroundRemovalPost.');
        }

        let queryParameters: string[] = [];
        if (model !== undefined) {
            queryParameters.push("model="+encodeURIComponent(String(model)));
        }

        headers['Accept'] = 'application/json';

        let formData: FormData = new FormData();
        headers['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8';
        if (image !== undefined) {
            formData.append('image', <any>image);
        }

        const response: Observable<HttpResponse<object>> = this.httpClient.post(`${this.basePath}/image/image/background-removal/?${queryParameters.join('&')}`, body, headers);
        if (observe == 'body') {
               return response.map(httpResponse => <object>(httpResponse.response));
        }
        return response;
    }


    /**
     * Get list of models available for background-removal
     * 
     
     */
    public getVersionsImageImageBackgroundRemovalGet(observe?: 'body', headers?: Headers): Observable<object>;
    public getVersionsImageImageBackgroundRemovalGet(observe?: 'response', headers?: Headers): Observable<HttpResponse<object>>;
    public getVersionsImageImageBackgroundRemovalGet(observe: any = 'body', headers: Headers = {}): Observable<any> {
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<object>> = this.httpClient.get(`${this.basePath}/image/image/background-removal/`, headers);
        if (observe == 'body') {
               return response.map(httpResponse => <object>(httpResponse.response));
        }
        return response;
    }

}
