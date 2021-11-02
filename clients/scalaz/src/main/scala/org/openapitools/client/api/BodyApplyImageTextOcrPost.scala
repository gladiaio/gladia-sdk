package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageTextOcrPost._

case class BodyApplyImageTextOcrPost (
  image: File)

object BodyApplyImageTextOcrPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageTextOcrPostCodecJson: CodecJson[BodyApplyImageTextOcrPost] = CodecJson.derive[BodyApplyImageTextOcrPost]
  implicit val BodyApplyImageTextOcrPostDecoder: EntityDecoder[BodyApplyImageTextOcrPost] = jsonOf[BodyApplyImageTextOcrPost]
  implicit val BodyApplyImageTextOcrPostEncoder: EntityEncoder[BodyApplyImageTextOcrPost] = jsonEncoderOf[BodyApplyImageTextOcrPost]
}
