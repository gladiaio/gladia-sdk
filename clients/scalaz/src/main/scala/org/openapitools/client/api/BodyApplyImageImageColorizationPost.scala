package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageImageColorizationPost._

case class BodyApplyImageImageColorizationPost (
  image: File)

object BodyApplyImageImageColorizationPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageImageColorizationPostCodecJson: CodecJson[BodyApplyImageImageColorizationPost] = CodecJson.derive[BodyApplyImageImageColorizationPost]
  implicit val BodyApplyImageImageColorizationPostDecoder: EntityDecoder[BodyApplyImageImageColorizationPost] = jsonOf[BodyApplyImageImageColorizationPost]
  implicit val BodyApplyImageImageColorizationPostEncoder: EntityEncoder[BodyApplyImageImageColorizationPost] = jsonEncoderOf[BodyApplyImageImageColorizationPost]
}
