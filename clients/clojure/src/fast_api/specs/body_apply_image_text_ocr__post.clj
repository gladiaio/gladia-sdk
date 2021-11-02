(ns fast-api.specs.body-apply-image-text-ocr--post
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def body-apply-image-text-ocr--post-data
  {
   (ds/req :image) any?
   })

(def body-apply-image-text-ocr--post-spec
  (ds/spec
    {:name ::body-apply-image-text-ocr--post
     :spec body-apply-image-text-ocr--post-data}))
