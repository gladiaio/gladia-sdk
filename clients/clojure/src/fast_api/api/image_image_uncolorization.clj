(ns fast-api.api.image-image-uncolorization
  (:require [fast-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [fast-api.specs.body-apply-image-image-background-removal--post :refer :all]
            [fast-api.specs.body-apply-image-image-colorization--post :refer :all]
            [fast-api.specs.body-apply-image-image-uncolorization--post :refer :all]
            [fast-api.specs.body-apply-image-image-super-resolution--post :refer :all]
            [fast-api.specs.validation-error :refer :all]
            [fast-api.specs.http-validation-error :refer :all]
            [fast-api.specs.body-apply-image-image-face-bluring--post :refer :all]
            [fast-api.specs.body-apply-image-text-ocr--post :refer :all]
            [fast-api.specs.body-apply-image-text-asciify--post :refer :all]
            )
  (:import (java.io File)))


(defn-spec apply-image-image-uncolorization-post-with-http-info any?
  "Apply model for the uncolorization task for a given models"
  ([^File image any?, ] (apply-image-image-uncolorization-post-with-http-info image nil))
  ([^File image any?, {:keys [model]} (s/map-of keyword? any?)]
   (check-required-params image)
   (call-api "/image/image/uncolorization/" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"model" model }
              :form-params   {"image" image }
              :content-types ["multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec apply-image-image-uncolorization-post any?
  "Apply model for the uncolorization task for a given models"
  ([^File image any?, ] (apply-image-image-uncolorization-post image nil))
  ([^File image any?, optional-params any?]
   (let [res (:data (apply-image-image-uncolorization-post-with-http-info image optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-versions-image-image-uncolorization-get-with-http-info any?
  "Get list of models available for uncolorization"
  []
  (call-api "/image/image/uncolorization/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-versions-image-image-uncolorization-get any?
  "Get list of models available for uncolorization"
  []
  (let [res (:data (get-versions-image-image-uncolorization-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


