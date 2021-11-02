
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageTextAsciifyPost (
    _image: File
)
object BodyApplyImageTextAsciifyPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
