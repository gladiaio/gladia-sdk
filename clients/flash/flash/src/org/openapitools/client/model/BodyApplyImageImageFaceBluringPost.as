package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageImageFaceBluringPost")]
    public class BodyApplyImageImageFaceBluringPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageImageFaceBluringPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
