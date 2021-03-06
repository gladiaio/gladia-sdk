/*
 * FastAPI
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 * Generated by: https://openapi-generator.tech
 */

use std::rc::Rc;
use std::borrow::Borrow;

use hyper;
use serde_json;
use futures::Future;

use super::{Error, configuration};
use super::request as __internal_request;

pub struct ImageImageUncolorizationApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> ImageImageUncolorizationApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> ImageImageUncolorizationApiClient<C> {
        ImageImageUncolorizationApiClient {
            configuration: configuration,
        }
    }
}

pub trait ImageImageUncolorizationApi {
    fn apply_image_image_uncolorization_post(&self, image: &std::path::Path, model: &str) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>>;
    fn get_versions_image_image_uncolorization_get(&self, ) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>ImageImageUncolorizationApi for ImageImageUncolorizationApiClient<C> {
    fn apply_image_image_uncolorization_post(&self, image: &std::path::Path, model: &str) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/image/image/uncolorization/".to_string())
            .with_query_param("model".to_string(), model.to_string())
            .with_form_param("image".to_string(), unimplemented!())
            .execute(self.configuration.borrow())
    }

    fn get_versions_image_image_uncolorization_get(&self, ) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/image/image/uncolorization/".to_string())
            .execute(self.configuration.borrow())
    }

}
