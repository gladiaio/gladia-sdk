package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageImageColorizationPost")]
    public class BodyApplyImageImageColorizationPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageImageColorizationPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
