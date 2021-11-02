package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyImageImageBackgroundRemovalPost")]
    public class BodyApplyImageImageBackgroundRemovalPost {
                [XmlElement(name="image")]
        public var image: File = null;

    public function toString(): String {
        var str: String = "BodyApplyImageImageBackgroundRemovalPost: ";
        str += " (image: " + image + ")";
        return str;
    }

}

}
