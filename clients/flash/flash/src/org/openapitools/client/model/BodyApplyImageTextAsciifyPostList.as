package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import flash.filesystem.File;

    public class BodyApplyImageTextAsciifyPostList implements ListWrapper {
        // This declaration below of _Body_apply_image_text_asciify__post_obj_class is to force flash compiler to include this class
        private var _bodyApplyImageTextAsciifyPost_obj_class: org.openapitools.client.model.BodyApplyImageTextAsciifyPost = null;
        [XmlElements(name="bodyApplyImageTextAsciifyPost", type="org.openapitools.client.model.BodyApplyImageTextAsciifyPost")]
        public var bodyApplyImageTextAsciifyPost: Array = new Array();

        public function getList(): Array{
            return bodyApplyImageTextAsciifyPost;
        }

}

}
