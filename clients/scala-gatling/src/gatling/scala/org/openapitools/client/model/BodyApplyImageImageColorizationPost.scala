
package org.openapitools.client.model

import java.io.File

case class BodyApplyImageImageColorizationPost (
    _image: File
)
object BodyApplyImageImageColorizationPost {
    def toStringBody(var_image: Object) =
        s"""
        | {
        | "image":$var_image
        | }
        """.stripMargin
}
