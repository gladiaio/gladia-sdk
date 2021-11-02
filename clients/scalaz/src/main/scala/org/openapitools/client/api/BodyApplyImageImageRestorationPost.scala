package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageImageRestorationPost._

case class BodyApplyImageImageRestorationPost (
  image: File)

object BodyApplyImageImageRestorationPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageImageRestorationPostCodecJson: CodecJson[BodyApplyImageImageRestorationPost] = CodecJson.derive[BodyApplyImageImageRestorationPost]
  implicit val BodyApplyImageImageRestorationPostDecoder: EntityDecoder[BodyApplyImageImageRestorationPost] = jsonOf[BodyApplyImageImageRestorationPost]
  implicit val BodyApplyImageImageRestorationPostEncoder: EntityEncoder[BodyApplyImageImageRestorationPost] = jsonEncoderOf[BodyApplyImageImageRestorationPost]
}
