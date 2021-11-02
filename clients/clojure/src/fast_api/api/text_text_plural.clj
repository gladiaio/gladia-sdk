(ns fast-api.api.text-text-plural
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


(defn-spec apply-text-text-plural-post-with-http-info any?
  "Apply model for the plural task for a given models"
  ([] (apply-text-text-plural-post-with-http-info nil))
  ([{:keys [word count model]} (s/map-of keyword? any?)]
   (call-api "/text/text/plural/" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"word" word "count" count "model" model }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec apply-text-text-plural-post any?
  "Apply model for the plural task for a given models"
  ([] (apply-text-text-plural-post nil))
  ([optional-params any?]
   (let [res (:data (apply-text-text-plural-post-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-versions-text-text-plural-get-with-http-info any?
  "Get list of models available for plural"
  []
  (call-api "/text/text/plural/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-versions-text-text-plural-get any?
  "Get list of models available for plural"
  []
  (let [res (:data (get-versions-text-text-plural-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


