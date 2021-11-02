package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageTextAsciifyPost")]
    public class BodyApplyImageTextAsciifyPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageTextAsciifyPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
