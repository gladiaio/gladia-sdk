package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageImageRestorationPost")]
    public class BodyApplyImageImageRestorationPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageImageRestorationPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
