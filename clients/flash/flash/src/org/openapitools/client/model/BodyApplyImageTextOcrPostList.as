package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import flash.filesystem.File;

    public class BodyApplyImageTextOcrPostList implements ListWrapper {
        // This declaration below of _Body_apply_image_text_ocr__post_obj_class is to force flash compiler to include this class
        private var _bodyApplyImageTextOcrPost_obj_class: org.openapitools.client.model.BodyApplyImageTextOcrPost = null;
        [XmlElements(name="bodyApplyImageTextOcrPost", type="org.openapitools.client.model.BodyApplyImageTextOcrPost")]
        public var bodyApplyImageTextOcrPost: Array = new Array();

        public function getList(): Array{
            return bodyApplyImageTextOcrPost;
        }

}

}
