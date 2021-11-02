package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageImageSuperResolutionPost._

case class BodyApplyImageImageSuperResolutionPost (
  image: File)

object BodyApplyImageImageSuperResolutionPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageImageSuperResolutionPostCodecJson: CodecJson[BodyApplyImageImageSuperResolutionPost] = CodecJson.derive[BodyApplyImageImageSuperResolutionPost]
  implicit val BodyApplyImageImageSuperResolutionPostDecoder: EntityDecoder[BodyApplyImageImageSuperResolutionPost] = jsonOf[BodyApplyImageImageSuperResolutionPost]
  implicit val BodyApplyImageImageSuperResolutionPostEncoder: EntityEncoder[BodyApplyImageImageSuperResolutionPost] = jsonEncoderOf[BodyApplyImageImageSuperResolutionPost]
}
