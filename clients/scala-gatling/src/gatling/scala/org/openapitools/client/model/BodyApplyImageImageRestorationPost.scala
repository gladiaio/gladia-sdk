
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageImageRestorationPost (
    _image: File
)
object BodyApplyImageImageRestorationPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
