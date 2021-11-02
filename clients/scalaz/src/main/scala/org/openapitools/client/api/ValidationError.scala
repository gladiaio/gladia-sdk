package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ValidationError._

case class ValidationError (
  loc: List[String],
msg: String,
`type`: String)

object ValidationError {
  import DateTimeCodecs._

  implicit val ValidationErrorCodecJson: CodecJson[ValidationError] = CodecJson.derive[ValidationError]
  implicit val ValidationErrorDecoder: EntityDecoder[ValidationError] = jsonOf[ValidationError]
  implicit val ValidationErrorEncoder: EntityEncoder[ValidationError] = jsonEncoderOf[ValidationError]
}
