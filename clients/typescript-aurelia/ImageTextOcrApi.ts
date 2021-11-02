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

import { autoinject } from 'aurelia-framework';
import { HttpClient } from 'aurelia-http-client';
import { Api } from './Api';
import { AuthStorage } from './AuthStorage';
import {
} from './models';

/**
 * applyImageTextOcrPost - parameters interface
 */
export interface IApplyImageTextOcrPostParams {
  image: any;
  sourceLanguage?: string;
  model?: 'tesseract-default' | 'tesseract-denoising' | 'easy-ocr';
}

/**
 * getVersionsImageTextOcrGet - parameters interface
 */
export interface IGetVersionsImageTextOcrGetParams {
}

/**
 * ImageTextOcrApi - API class
 */
@autoinject()
export class ImageTextOcrApi extends Api {

  /**
   * Creates a new ImageTextOcrApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Apply model for the ocr task for a given models
   * @param params.image 
   * @param params.sourceLanguage 
   * @param params.model 
   */
  async applyImageTextOcrPost(params: IApplyImageTextOcrPostParams): Promise<object> {
    // Verify required parameters are set
    this.ensureParamIsSet('applyImageTextOcrPost', params, 'image');

    // Create URL to call
    const url = `${this.basePath}/image/text/ocr/`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPost()
      // Set query parameters
      .withParams({ 
        'source_language': params['sourceLanguage'],
        'model': params['model'],
      })
      // Encode form parameters
      .withHeader('content-type', 'application/x-www-form-urlencoded')
      .withContent(this.queryString({ 
        'image': params['image'],
      }))

      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get list of models available for ocr
   */
  async getVersionsImageTextOcrGet(): Promise<object> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/image/text/ocr/`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()

      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

}

