package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import HTTPValidationError._

case class HTTPValidationError (
  detail: Option[List[ValidationError]])

object HTTPValidationError {
  import DateTimeCodecs._

  implicit val HTTPValidationErrorCodecJson: CodecJson[HTTPValidationError] = CodecJson.derive[HTTPValidationError]
  implicit val HTTPValidationErrorDecoder: EntityDecoder[HTTPValidationError] = jsonOf[HTTPValidationError]
  implicit val HTTPValidationErrorEncoder: EntityEncoder[HTTPValidationError] = jsonEncoderOf[HTTPValidationError]
}
