
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageImageFaceBluringPost (
    _image: File
)
object BodyApplyImageImageFaceBluringPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
