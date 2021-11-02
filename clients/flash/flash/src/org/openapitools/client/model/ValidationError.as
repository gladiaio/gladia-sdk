package org.openapitools.client.model {


    [XmlRootNode(name="ValidationError")]
    public class ValidationError {
                // This declaration below of _loc_obj_class is to force flash compiler to include this class
        private var _loc_obj_class: Array = null;
        [XmlElementWrapper(name="loc")]
        [XmlElements(name="loc", type="Array")]
                public var loc: Array = new Array();
                [XmlElement(name="msg")]
        public var msg: String = null;
                [XmlElement(name="type")]
        public var type: String = null;

    public function toString(): String {
        var str: String = "ValidationError: ";
        str += " (loc: " + loc + ")";
        str += " (msg: " + msg + ")";
        str += " (type: " + type + ")";
        return str;
    }

}

}
