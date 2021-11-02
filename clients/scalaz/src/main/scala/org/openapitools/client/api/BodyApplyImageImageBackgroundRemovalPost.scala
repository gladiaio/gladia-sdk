package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageImageBackgroundRemovalPost._

case class BodyApplyImageImageBackgroundRemovalPost (
  image: File)

object BodyApplyImageImageBackgroundRemovalPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageImageBackgroundRemovalPostCodecJson: CodecJson[BodyApplyImageImageBackgroundRemovalPost] = CodecJson.derive[BodyApplyImageImageBackgroundRemovalPost]
  implicit val BodyApplyImageImageBackgroundRemovalPostDecoder: EntityDecoder[BodyApplyImageImageBackgroundRemovalPost] = jsonOf[BodyApplyImageImageBackgroundRemovalPost]
  implicit val BodyApplyImageImageBackgroundRemovalPostEncoder: EntityEncoder[BodyApplyImageImageBackgroundRemovalPost] = jsonEncoderOf[BodyApplyImageImageBackgroundRemovalPost]
}
