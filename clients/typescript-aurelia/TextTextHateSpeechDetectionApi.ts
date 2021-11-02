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
 * applyTextTextHateSpeechDetectionPost - parameters interface
 */
export interface IApplyTextTextHateSpeechDetectionPostParams {
  text?: string;
  model?: 'Hate-speech-CNERG-dehatebert-mono-english';
}

/**
 * getVersionsTextTextHateSpeechDetectionGet - parameters interface
 */
export interface IGetVersionsTextTextHateSpeechDetectionGetParams {
}

/**
 * TextTextHateSpeechDetectionApi - API class
 */
@autoinject()
export class TextTextHateSpeechDetectionApi extends Api {

  /**
   * Creates a new TextTextHateSpeechDetectionApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Apply model for the hate-speech-detection task for a given models
   * @param params.text 
   * @param params.model 
   */
  async applyTextTextHateSpeechDetectionPost(params: IApplyTextTextHateSpeechDetectionPostParams): Promise<object> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/text/text/hate-speech-detection/`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPost()
      // Set query parameters
      .withParams({ 
        'text': params['text'],
        'model': params['model'],
      })

      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Get list of models available for hate-speech-detection
   */
  async getVersionsTextTextHateSpeechDetectionGet(): Promise<object> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/text/text/hate-speech-detection/`;

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

