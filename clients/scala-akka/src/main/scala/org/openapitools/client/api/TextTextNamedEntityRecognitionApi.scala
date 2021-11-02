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
package org.openapitools.client.api

import org.openapitools.client.model.HTTPValidationError
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object TextTextNamedEntityRecognitionApi {

  def apply(baseUrl: String = "http://localhost") = new TextTextNamedEntityRecognitionApi(baseUrl)
}

class TextTextNamedEntityRecognitionApi(baseUrl: String) {
  
  /**
   * Expected answers:
   *   code 200 : Any (Successful Response)
   *   code 422 : HTTPValidationError (Validation Error)
   * 
   * @param text 
   * @param model 
   */
  def applyTextTextNamedEntityRecognitionPost(text: Option[String] = None, model: Option[String] = None): ApiRequest[Any] =
    ApiRequest[Any](ApiMethods.POST, "http://localhost", "/text/text/named-entity-recognition/", "application/json")
      .withQueryParam("text", text)
      .withQueryParam("model", model)
      .withSuccessResponse[Any](200)
      .withErrorResponse[HTTPValidationError](422)
      

  /**
   * Expected answers:
   *   code 200 : Any (Successful Response)
   */
  def getVersionsTextTextNamedEntityRecognitionGet(): ApiRequest[Any] =
    ApiRequest[Any](ApiMethods.GET, "http://localhost", "/text/text/named-entity-recognition/", "application/json")
      .withSuccessResponse[Any](200)
      



}

