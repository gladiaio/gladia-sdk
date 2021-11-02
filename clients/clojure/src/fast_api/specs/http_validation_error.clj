(ns fast-api.specs.http-validation-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [fast-api.specs.validation-error :refer :all]
            )
  (:import (java.io File)))


(def http-validation-error-data
  {
   (ds/opt :detail) (s/coll-of validation-error-spec)
   })

(def http-validation-error-spec
  (ds/spec
    {:name ::http-validation-error
     :spec http-validation-error-data}))
