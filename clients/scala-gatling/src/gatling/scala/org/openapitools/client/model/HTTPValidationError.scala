
package org.openapitools.client.model


case class HTTPValidationError (
    _detail: Option[List[ValidationError]]
)
object HTTPValidationError {
    def toStringBody(var_detail: Object) =
        s"""
        | {
        | "detail":$var_detail
        | }
        """.stripMargin
}
