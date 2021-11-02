package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ValidationErrorList implements ListWrapper {
        // This declaration below of _ValidationError_obj_class is to force flash compiler to include this class
        private var _validationError_obj_class: org.openapitools.client.model.ValidationError = null;
        [XmlElements(name="validationError", type="org.openapitools.client.model.ValidationError")]
        public var validationError: Array = new Array();

        public function getList(): Array{
            return validationError;
        }

}

}
