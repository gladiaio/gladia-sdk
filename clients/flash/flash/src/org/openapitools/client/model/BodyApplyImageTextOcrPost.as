package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageTextOcrPost")]
    public class BodyApplyImageTextOcrPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageTextOcrPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
