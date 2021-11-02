package org.openapitools.client.model {

import org.openapitools.client.model.ValidationError;

    [XmlRootNode(name="HTTPValidationError")]
    public class HTTPValidationError {
                // This declaration below of _detail_obj_class is to force flash compiler to include this class
        private var _detail_obj_class: Array = null;
        [XmlElementWrapper(name="detail")]
        [XmlElements(name="detail", type="Array")]
                public var detail: Array = new Array();

    public function toString(): String {
        var str: String = "HTTPValidationError: ";
        str += " (detail: " + detail + ")";
        return str;
    }

}

}
