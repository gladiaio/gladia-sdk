(ns fast-api.api.video-video-frame-interpolation
  (:require [fast-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [fast-api.specs.body-apply-image-image-background-removal--post :refer :all]
            [fast-api.specs.body-apply-image-image-colorization--post :refer :all]
            [fast-api.specs.body-apply-image-image-uncolorization--post :refer :all]
            [fast-api.specs.body-apply-video-video-frame-interpolation--post :refer :all]
            [fast-api.specs.body-apply-image-image-super-resolution--post :refer :all]
            [fast-api.specs.validation-error :refer :all]
            [fast-api.specs.http-validation-error :refer :all]
            [fast-api.specs.body-apply-image-image-face-bluring--post :refer :all]
            [fast-api.specs.body-apply-image-image-restoration--post :refer :all]
            [fast-api.specs.body-apply-image-text-ocr--post :refer :all]
            [fast-api.specs.body-apply-image-text-asciify--post :refer :all]
            )
  (:import (java.io File)))


(defn-spec apply-video-video-frame-interpolation-post-with-http-info any?
  "Apply model for the frame-interpolation task for a given models"
  ([^File video any?, ] (apply-video-video-frame-interpolation-post-with-http-info video nil))
  ([^File video any?, {:keys [model]} (s/map-of keyword? any?)]
   (check-required-params video)
   (call-api "/video/video/frame-interpolation/" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"model" model }
              :form-params   {"video" video }
              :content-types ["multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec apply-video-video-frame-interpolation-post any?
  "Apply model for the frame-interpolation task for a given models"
  ([^File video any?, ] (apply-video-video-frame-interpolation-post video nil))
  ([^File video any?, optional-params any?]
   (let [res (:data (apply-video-video-frame-interpolation-post-with-http-info video optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-versions-video-video-frame-interpolation-get-with-http-info any?
  "Get list of models available for frame-interpolation"
  []
  (call-api "/video/video/frame-interpolation/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-versions-video-video-frame-interpolation-get any?
  "Get list of models available for frame-interpolation"
  []
  (let [res (:data (get-versions-video-video-frame-interpolation-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


