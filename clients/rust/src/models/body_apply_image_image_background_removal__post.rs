/*
 * FastAPI
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct BodyApplyImageImageBackgroundRemovalPost {
    #[serde(rename = "image")]
    pub image: &std::path::Path,
}

impl BodyApplyImageImageBackgroundRemovalPost {
    pub fn new(image: &std::path::Path) -> BodyApplyImageImageBackgroundRemovalPost {
        BodyApplyImageImageBackgroundRemovalPost {
            image: image,
        }
    }
}
