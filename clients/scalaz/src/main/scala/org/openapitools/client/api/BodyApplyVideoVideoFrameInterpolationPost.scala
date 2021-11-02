package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import BodyApplyVideoVideoFrameInterpolationPost._

case class BodyApplyVideoVideoFrameInterpolationPost (
  video: File)

object BodyApplyVideoVideoFrameInterpolationPost {
  import DateTimeCodecs._

  implicit val BodyApplyVideoVideoFrameInterpolationPostCodecJson: CodecJson[BodyApplyVideoVideoFrameInterpolationPost] = CodecJson.derive[BodyApplyVideoVideoFrameInterpolationPost]
  implicit val BodyApplyVideoVideoFrameInterpolationPostDecoder: EntityDecoder[BodyApplyVideoVideoFrameInterpolationPost] = jsonOf[BodyApplyVideoVideoFrameInterpolationPost]
  implicit val BodyApplyVideoVideoFrameInterpolationPostEncoder: EntityEncoder[BodyApplyVideoVideoFrameInterpolationPost] = jsonEncoderOf[BodyApplyVideoVideoFrameInterpolationPost]
}
