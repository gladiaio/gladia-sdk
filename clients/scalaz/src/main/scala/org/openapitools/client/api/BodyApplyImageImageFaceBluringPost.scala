package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageImageFaceBluringPost._

case class BodyApplyImageImageFaceBluringPost (
  image: File)

object BodyApplyImageImageFaceBluringPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageImageFaceBluringPostCodecJson: CodecJson[BodyApplyImageImageFaceBluringPost] = CodecJson.derive[BodyApplyImageImageFaceBluringPost]
  implicit val BodyApplyImageImageFaceBluringPostDecoder: EntityDecoder[BodyApplyImageImageFaceBluringPost] = jsonOf[BodyApplyImageImageFaceBluringPost]
  implicit val BodyApplyImageImageFaceBluringPostEncoder: EntityEncoder[BodyApplyImageImageFaceBluringPost] = jsonEncoderOf[BodyApplyImageImageFaceBluringPost]
}
