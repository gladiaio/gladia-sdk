(ns fast-api.specs.body-apply-video-video-frame-interpolation--post
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def body-apply-video-video-frame-interpolation--post-data
  {
   (ds/req :video) any?
   })

(def body-apply-video-video-frame-interpolation--post-spec
  (ds/spec
    {:name ::body-apply-video-video-frame-interpolation--post
     :spec body-apply-video-video-frame-interpolation--post-data}))
