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

class TextTextKeywordExtractionApi(
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
  val helper = new TextTextKeywordExtractionApiAsyncHelper(client, config)

  /**
   * Apply model for the keyword-extraction task for a given models
   * 
   *
   * @param text  (optional, default to The Crown is a historical drama streaming television series about the reign of Queen Elizabeth II, created and principally written by Peter Morgan, and produced by Left Bank Pictures and Sony Pictures Television for Netflix. Morgan developed it from his drama film The Queen (2006) and especially his stage play The Audience (2013). The first season covers the period from Elizabeth's marriage to Philip, Duke of Edinburgh in 1947 to the disintegration of her sister Princess Margaret's engagement to Group Captain Peter Townsend in 1955. The second season covers the period from the Suez Crisis in 1956 to the retirement of Prime Minister Harold Macmillan in 1963 and the birth of Prince Edward in 1964. The third season spans 1964 to 1977, includes Harold Wilson's two periods as prime minister, and introduces Camilla Shand. The fourth season spans 1979 to the early 1990s and includes Margaret Thatcher's tenure as prime minister and Prince Charles's marriage to Lady Diana Spencer. The fifth and sixth seasons, which will close the series, will cover the Queen's reign into the 21st century. For each of the two-season increments, new actors fill the roles to account for the ageing process in the periods of time portrayed. Claire Foy portrays the Queen in the first two seasons, alongside Matt Smith as Prince Philip and Vanessa Kirby as Princess Margaret. For the third and fourth seasons, Olivia Colman takes over as the Queen, Tobias Menzies as Prince Philip, and Helena Bonham Carter as Princess Margaret. Also added to the cast in season 3 is Josh O'Connor as Prince Charles. In the fourth season, new cast members include Emma Corrin as Lady Diana Spencer and Gillian Anderson as Margaret Thatcher. Imelda Staunton, Jonathan Pryce, and Lesley Manville will succeed Colman, Menzies, and Bonham Carter, respectively, for the final two seasons, while Elizabeth Debicki and Dominic West are expected to assume the role of Princess Diana and Prince Charles, respectively. Filming takes place at Elstree Studios in Borehamwood, Hertfordshire, with location shooting throughout the United Kingdom and internationally. The first season was released by Netflix on 4 November 2016, the second on 8 December 2017, the third on 17 November 2019, and the fourth on 15 November 2020. The fifth season is anticipated in 2022. As of 2020, the estimated production budget of The Crown has been reported to be $260 million, making it one of the most expensive television series in history.[4] The Crown was praised by critics for its acting, directing, writing, cinematography, and production values, although its historical inaccuracies have received some criticism, particularly within the fourth season. Nonetheless, it received accolades at the 23rd Screen Actors Guild Awards, Foy won Best Actress in the lead role and Best Actor for John Lithgow as Winston Churchill, and has secured a total of sixty three nominations for its first four seasons at the Primetime Emmy Awards, including four for Outstanding Drama Series.[5] The series has also twice won the Golden Globe Award for Best Television Series - Drama, at the 74th and 78th ceremonies, with additional acting wins for Foy, Colman, Corrin, O'Connor and Anderson.[6] )
   * @param model  (optional, default to keybert-paraphrase-MiniLM-L6-v2)
   * @return Any
   */
  def applyTextTextKeywordExtractionPost(text: Option[String] = None, model: Option[String] = None): Option[Any] = {
    val await = Try(Await.result(applyTextTextKeywordExtractionPostAsync(text, model), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Apply model for the keyword-extraction task for a given models asynchronously
   * 
   *
   * @param text  (optional, default to The Crown is a historical drama streaming television series about the reign of Queen Elizabeth II, created and principally written by Peter Morgan, and produced by Left Bank Pictures and Sony Pictures Television for Netflix. Morgan developed it from his drama film The Queen (2006) and especially his stage play The Audience (2013). The first season covers the period from Elizabeth's marriage to Philip, Duke of Edinburgh in 1947 to the disintegration of her sister Princess Margaret's engagement to Group Captain Peter Townsend in 1955. The second season covers the period from the Suez Crisis in 1956 to the retirement of Prime Minister Harold Macmillan in 1963 and the birth of Prince Edward in 1964. The third season spans 1964 to 1977, includes Harold Wilson's two periods as prime minister, and introduces Camilla Shand. The fourth season spans 1979 to the early 1990s and includes Margaret Thatcher's tenure as prime minister and Prince Charles's marriage to Lady Diana Spencer. The fifth and sixth seasons, which will close the series, will cover the Queen's reign into the 21st century. For each of the two-season increments, new actors fill the roles to account for the ageing process in the periods of time portrayed. Claire Foy portrays the Queen in the first two seasons, alongside Matt Smith as Prince Philip and Vanessa Kirby as Princess Margaret. For the third and fourth seasons, Olivia Colman takes over as the Queen, Tobias Menzies as Prince Philip, and Helena Bonham Carter as Princess Margaret. Also added to the cast in season 3 is Josh O'Connor as Prince Charles. In the fourth season, new cast members include Emma Corrin as Lady Diana Spencer and Gillian Anderson as Margaret Thatcher. Imelda Staunton, Jonathan Pryce, and Lesley Manville will succeed Colman, Menzies, and Bonham Carter, respectively, for the final two seasons, while Elizabeth Debicki and Dominic West are expected to assume the role of Princess Diana and Prince Charles, respectively. Filming takes place at Elstree Studios in Borehamwood, Hertfordshire, with location shooting throughout the United Kingdom and internationally. The first season was released by Netflix on 4 November 2016, the second on 8 December 2017, the third on 17 November 2019, and the fourth on 15 November 2020. The fifth season is anticipated in 2022. As of 2020, the estimated production budget of The Crown has been reported to be $260 million, making it one of the most expensive television series in history.[4] The Crown was praised by critics for its acting, directing, writing, cinematography, and production values, although its historical inaccuracies have received some criticism, particularly within the fourth season. Nonetheless, it received accolades at the 23rd Screen Actors Guild Awards, Foy won Best Actress in the lead role and Best Actor for John Lithgow as Winston Churchill, and has secured a total of sixty three nominations for its first four seasons at the Primetime Emmy Awards, including four for Outstanding Drama Series.[5] The series has also twice won the Golden Globe Award for Best Television Series - Drama, at the 74th and 78th ceremonies, with additional acting wins for Foy, Colman, Corrin, O'Connor and Anderson.[6] )
   * @param model  (optional, default to keybert-paraphrase-MiniLM-L6-v2)
   * @return Future(Any)
   */
  def applyTextTextKeywordExtractionPostAsync(text: Option[String] = None, model: Option[String] = None): Future[Any] = {
      helper.applyTextTextKeywordExtractionPost(text, model)
  }

  /**
   * Get list of models available for keyword-extraction
   * 
   *
   * @return Any
   */
  def getVersionsTextTextKeywordExtractionGet(): Option[Any] = {
    val await = Try(Await.result(getVersionsTextTextKeywordExtractionGetAsync(), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Get list of models available for keyword-extraction asynchronously
   * 
   *
   * @return Future(Any)
   */
  def getVersionsTextTextKeywordExtractionGetAsync(): Future[Any] = {
      helper.getVersionsTextTextKeywordExtractionGet()
  }

}

class TextTextKeywordExtractionApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def applyTextTextKeywordExtractionPost(text: Option[String] = None,
    model: Option[String] = None
    )(implicit reader: ClientResponseReader[Any]): Future[Any] = {
    // create path and map variables
    val path = (addFmt("/text/text/keyword-extraction/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    text match {
      case Some(param) => queryParams += "text" -> param.toString
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

  def getVersionsTextTextKeywordExtractionGet()(implicit reader: ClientResponseReader[Any]): Future[Any] = {
    // create path and map variables
    val path = (addFmt("/text/text/keyword-extraction/"))

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
