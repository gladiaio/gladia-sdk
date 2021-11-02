package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyImageTextAsciifyPost._

case class BodyApplyImageTextAsciifyPost (
  image: File)

object BodyApplyImageTextAsciifyPost {
  import DateTimeCodecs._

  implicit val BodyApplyImageTextAsciifyPostCodecJson: CodecJson[BodyApplyImageTextAsciifyPost] = CodecJson.derive[BodyApplyImageTextAsciifyPost]
  implicit val BodyApplyImageTextAsciifyPostDecoder: EntityDecoder[BodyApplyImageTextAsciifyPost] = jsonOf[BodyApplyImageTextAsciifyPost]
  implicit val BodyApplyImageTextAsciifyPostEncoder: EntityEncoder[BodyApplyImageTextAsciifyPost] = jsonEncoderOf[BodyApplyImageTextAsciifyPost]
}
