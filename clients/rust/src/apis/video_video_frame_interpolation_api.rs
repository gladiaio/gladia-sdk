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

pub struct VideoVideoFrameInterpolationApiClient<C: hyper::client::Connect> {
    configuration: Rc<configuration::Configuration<C>>,
}

impl<C: hyper::client::Connect> VideoVideoFrameInterpolationApiClient<C> {
    pub fn new(configuration: Rc<configuration::Configuration<C>>) -> VideoVideoFrameInterpolationApiClient<C> {
        VideoVideoFrameInterpolationApiClient {
            configuration: configuration,
        }
    }
}

pub trait VideoVideoFrameInterpolationApi {
    fn apply_video_video_frame_interpolation_post(&self, video: &std::path::Path, model: &str) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>>;
    fn get_versions_video_video_frame_interpolation_get(&self, ) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>>;
}


impl<C: hyper::client::Connect>VideoVideoFrameInterpolationApi for VideoVideoFrameInterpolationApiClient<C> {
    fn apply_video_video_frame_interpolation_post(&self, video: &std::path::Path, model: &str) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Post, "/video/video/frame-interpolation/".to_string())
            .with_query_param("model".to_string(), model.to_string())
            .with_form_param("video".to_string(), unimplemented!())
            .execute(self.configuration.borrow())
    }

    fn get_versions_video_video_frame_interpolation_get(&self, ) -> Box<Future<Item = Value, Error = Error<serde_json::Value>>> {
        __internal_request::Request::new(hyper::Method::Get, "/video/video/frame-interpolation/".to_string())
            .execute(self.configuration.borrow())
    }

}
