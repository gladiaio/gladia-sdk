
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageImageBackgroundRemovalPost (
    _image: File
)
object BodyApplyImageImageBackgroundRemovalPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
