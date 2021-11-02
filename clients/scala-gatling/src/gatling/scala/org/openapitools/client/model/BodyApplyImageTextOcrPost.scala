
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageTextOcrPost (
    _image: File
)
object BodyApplyImageTextOcrPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
