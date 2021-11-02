package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

object TextTextSentencePairModelingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def applyTextTextSentencePairModelingPost(host: String, sentence: String = Once, a group of frogs was roaming around the forest in search of water., model: String = UKPLab-all-MiniLM-L6-v2)(implicit sentenceQuery: QueryParam[String], modelQuery: QueryParam[String]): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/text/text/sentence-pair-modeling/"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("sentence", Some(sentenceQuery.toParamString(sentence))), ("model", Some(modelQuery.toParamString(model))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }
  
  def getVersionsTextTextSentencePairModelingGet(host: String): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/text/text/sentence-pair-modeling/"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }
  
}

class HttpServiceTextTextSentencePairModelingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def applyTextTextSentencePairModelingPost(sentence: String = Once, a group of frogs was roaming around the forest in search of water., model: String = UKPLab-all-MiniLM-L6-v2)(implicit sentenceQuery: QueryParam[String], modelQuery: QueryParam[String]): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/text/text/sentence-pair-modeling/"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("sentence", Some(sentenceQuery.toParamString(sentence))), ("model", Some(modelQuery.toParamString(model))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }
  
  def getVersionsTextTextSentencePairModelingGet(): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/text/text/sentence-pair-modeling/"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }
  
}
