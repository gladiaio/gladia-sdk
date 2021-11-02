package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ValidationError;

    public class HTTPValidationErrorList implements ListWrapper {
        // This declaration below of _HTTPValidationError_obj_class is to force flash compiler to include this class
        private var _hTTPValidationError_obj_class: org.openapitools.client.model.HTTPValidationError = null;
        [XmlElements(name="hTTPValidationError", type="org.openapitools.client.model.HTTPValidationError")]
        public var hTTPValidationError: Array = new Array();

        public function getList(): Array{
            return hTTPValidationError;
        }

}

}
