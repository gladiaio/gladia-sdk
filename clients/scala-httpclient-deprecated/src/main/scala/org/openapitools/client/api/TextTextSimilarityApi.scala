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

import java.text.SimpleDateFormat

import org.openapitools.client.model.HTTPValidationError
import org.openapitools.client.{ApiInvoker, ApiException}

import collection.mutable
import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart
import com.wordnik.swagger.client._
import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._
import javax.ws.rs.core.Response.Status.Family

import java.net.URI
import java.io.File
import java.util.Date
import java.util.TimeZone
import javax.ws.rs.core.{MediaType, Response}

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.collection.mutable.HashMap
import scala.util.{Failure, Success, Try}

import org.json4s._

class TextTextSimilarityApi(
  val defBasePath: String = "http://localhost",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new TextTextSimilarityApiAsyncHelper(client, config)

  /**
   * Apply model for the similarity task for a given models
   * 
   *
   * @param sentence1  (optional, default to I like Python because I can build AI applications)
   * @param sentence2  (optional, default to Second sentence to compare to)
   * @param model  (optional, default to all-MiniLM-L6-v2)
   * @return Any
   */
  def applyTextTextSimilarityPost(sentence1: Option[String] = None, sentence2: Option[String] = None, model: Option[String] = None): Option[Any] = {
    val await = Try(Await.result(applyTextTextSimilarityPostAsync(sentence1, sentence2, model), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Apply model for the similarity task for a given models asynchronously
   * 
   *
   * @param sentence1  (optional, default to I like Python because I can build AI applications)
   * @param sentence2  (optional, default to Second sentence to compare to)
   * @param model  (optional, default to all-MiniLM-L6-v2)
   * @return Future(Any)
   */
  def applyTextTextSimilarityPostAsync(sentence1: Option[String] = None, sentence2: Option[String] = None, model: Option[String] = None): Future[Any] = {
      helper.applyTextTextSimilarityPost(sentence1, sentence2, model)
  }

  /**
   * Get list of models available for similarity
   * 
   *
   * @return Any
   */
  def getVersionsTextTextSimilarityGet(): Option[Any] = {
    val await = Try(Await.result(getVersionsTextTextSimilarityGetAsync(), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Get list of models available for similarity asynchronously
   * 
   *
   * @return Future(Any)
   */
  def getVersionsTextTextSimilarityGetAsync(): Future[Any] = {
      helper.getVersionsTextTextSimilarityGet()
  }

}

class TextTextSimilarityApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def applyTextTextSimilarityPost(sentence1: Option[String] = None,
    sentence2: Option[String] = None,
    model: Option[String] = None
    )(implicit reader: ClientResponseReader[Any]): Future[Any] = {
    // create path and map variables
    val path = (addFmt("/text/text/similarity/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    sentence1 match {
      case Some(param) => queryParams += "sentence_1" -> param.toString
      case _ => queryParams
    }
    sentence2 match {
      case Some(param) => queryParams += "sentence_2" -> param.toString
      case _ => queryParams
    }
    model match {
      case Some(param) => queryParams += "model" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }

  def getVersionsTextTextSimilarityGet()(implicit reader: ClientResponseReader[Any]): Future[Any] = {
    // create path and map variables
    val path = (addFmt("/text/text/similarity/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }


}
