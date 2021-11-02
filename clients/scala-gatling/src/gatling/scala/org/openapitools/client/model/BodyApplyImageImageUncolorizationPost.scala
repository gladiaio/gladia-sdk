
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageImageUncolorizationPost (
    _image: File
)
object BodyApplyImageImageUncolorizationPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
