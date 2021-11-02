
package org.openapitools.client.model


case class ValidationError (
    _loc: List[String],
    _msg: String,
    _type: String
)
object ValidationError {
    def toStringBody(var_loc: Object, var_msg: Object, var_type: Object) =
        s"""
        | {
        | "loc":$var_loc,"msg":$var_msg,"type":$var_type
        | }
        """.stripMargin
}
