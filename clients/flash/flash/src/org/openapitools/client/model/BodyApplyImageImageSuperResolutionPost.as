package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageImageSuperResolutionPost")]
    public class BodyApplyImageImageSuperResolutionPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageImageSuperResolutionPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
