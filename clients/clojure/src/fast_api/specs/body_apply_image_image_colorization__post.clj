(ns fast-api.specs.body-apply-image-image-colorization--post
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def body-apply-image-image-colorization--post-data
  {
   (ds/req :image) any?
   })

(def body-apply-image-image-colorization--post-spec
  (ds/spec
    {:name ::body-apply-image-image-colorization--post
     :spec body-apply-image-image-colorization--post-data}))
