package org.openapitools.client.model {

import flash.filesystem.File;

    [XmlRootNode(name="BodyApplyVideoVideoFrameInterpolationPost")]
    public class BodyApplyVideoVideoFrameInterpolationPost {
                [XmlElement(name="video")]
        public var video: File = null;

    public function toString(): String {
        var str: String = "BodyApplyVideoVideoFrameInterpolationPost: ";
        str += " (video: " + video + ")";
        return str;
    }

}

}
