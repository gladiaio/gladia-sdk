(ns fast-api.api.text-text-next-sentence-prediction
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


(defn-spec apply-text-text-next-sentence-prediction-post-with-http-info any?
  "Apply model for the next-sentence-prediction task for a given models"
  ([] (apply-text-text-next-sentence-prediction-post-with-http-info nil))
  ([{:keys [sentence_1 sentence_2 model]} (s/map-of keyword? any?)]
   (call-api "/text/text/next-sentence-prediction/" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"sentence_1" sentence_1 "sentence_2" sentence_2 "model" model }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec apply-text-text-next-sentence-prediction-post any?
  "Apply model for the next-sentence-prediction task for a given models"
  ([] (apply-text-text-next-sentence-prediction-post nil))
  ([optional-params any?]
   (let [res (:data (apply-text-text-next-sentence-prediction-post-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-versions-text-text-next-sentence-prediction-get-with-http-info any?
  "Get list of models available for next-sentence-prediction"
  []
  (call-api "/text/text/next-sentence-prediction/" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-versions-text-text-next-sentence-prediction-get any?
  "Get list of models available for next-sentence-prediction"
  []
  (let [res (:data (get-versions-text-text-next-sentence-prediction-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


