package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageImageUncolorizationPost._

case class BodyApplyImageImageUncolorizationPost (
  image: File)

object BodyApplyImageImageUncolorizationPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageImageUncolorizationPostCodecJson: CodecJson[BodyApplyImageImageUncolorizationPost] = CodecJson.derive[BodyApplyImageImageUncolorizationPost]
  implicit val BodyApplyImageImageUncolorizationPostDecoder: EntityDecoder[BodyApplyImageImageUncolorizationPost] = jsonOf[BodyApplyImageImageUncolorizationPost]
  implicit val BodyApplyImageImageUncolorizationPostEncoder: EntityEncoder[BodyApplyImageImageUncolorizationPost] = jsonEncoderOf[BodyApplyImageImageUncolorizationPost]
}
