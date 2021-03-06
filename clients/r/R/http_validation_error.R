# FastAPI
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
# 
# Generated by: https://openapi-generator.tech


#' HTTPValidationError Class
#'
#' @field detail Detail
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HTTPValidationError <- R6::R6Class(
  'HTTPValidationError',
  public = list(
    `detail` = NULL,
    initialize = function(`detail`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`detail`)) {
        stopifnot(is.vector(`detail`), length(`detail`) != 0)
        sapply(`detail`, function(x) stopifnot(R6::is.R6(x)))
        self$`detail` <- `detail`
      }
    },
    toJSON = function() {
      HTTPValidationErrorObject <- list()
      if (!is.null(self$`detail`)) {
        HTTPValidationErrorObject[['detail']] <-
          sapply(self$`detail`, function(x) x$toJSON())
      }

      HTTPValidationErrorObject
    },
    fromJSON = function(HTTPValidationErrorJson) {
      HTTPValidationErrorObject <- jsonlite::fromJSON(HTTPValidationErrorJson)
      if (!is.null(HTTPValidationErrorObject$`detail`)) {
        self$`detail` <- sapply(HTTPValidationErrorObject$`detail`, function(x) {
          detailObject <- ValidationError$new()
          detailObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          detailObject
        })
      }
    },
    toJSONString = function() {
      sprintf(
        '{
           "detail":
             [%s]
        }',
        paste(unlist(lapply(self$`detail`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE))), collapse=",")
      )
    },
    fromJSONString = function(HTTPValidationErrorJson) {
      HTTPValidationErrorObject <- jsonlite::fromJSON(HTTPValidationErrorJson)
      data.frame <- HTTPValidationErrorObject$`detail`
      self$`detail` <- vector("list", length = nrow(data.frame))
      for (row in 1:nrow(data.frame)) {
          detail.node <- ValidationError$new()
          detail.node$fromJSON(jsonlite::toJSON(data.frame[row,,drop = TRUE], auto_unbox = TRUE))
          self$`detail`[[row]] <- detail.node
      }
      self
    }
  )
)
