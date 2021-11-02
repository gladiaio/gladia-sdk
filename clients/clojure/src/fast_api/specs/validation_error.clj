(ns fast-api.specs.validation-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def validation-error-data
  {
   (ds/req :loc) (s/coll-of string?)
   (ds/req :msg) string?
   (ds/req :type) string?
   })

(def validation-error-spec
  (ds/spec
    {:name ::validation-error
     :spec validation-error-data}))
