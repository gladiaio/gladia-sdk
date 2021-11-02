package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageImageUncolorizationPost")]
    public class BodyApplyImageImageUncolorizationPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageImageUncolorizationPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
