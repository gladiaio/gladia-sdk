
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageImageSuperResolutionPost (
    _image: File
)
object BodyApplyImageImageSuperResolutionPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
