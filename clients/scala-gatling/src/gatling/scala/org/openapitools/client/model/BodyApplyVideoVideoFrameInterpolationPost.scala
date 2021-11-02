
package org.openapitools.client.model

import java.io.File

case class BodyApplyVideoVideoFrameInterpolationPost (
    _video: File
)
object BodyApplyVideoVideoFrameInterpolationPost {
    def toStringBody(var_video: Object) =
        s"""
        | {
        | "video":$var_video
        | }
        """.stripMargin
}
