# FastAPI
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
# 
# Generated by: https://openapi-generator.tech

#' @title TextTextEntityExtraction operations
#' @description openapi.TextTextEntityExtraction
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' ApplyTextTextEntityExtractionPost Apply model for the entity-extraction task for a given models
#'
#'
#' GetVersionsTextTextEntityExtractionGet Get list of models available for entity-extraction
#'
#' }
#'
#' @importFrom caTools base64encode
#' @export
TextTextEntityExtractionApi <- R6::R6Class(
  'TextTextEntityExtractionApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    ApplyTextTextEntityExtractionPost = function(input.string='Text to extract entities from', model='dbmdz-bert-large-cased-finetuned-conll03-english', ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      queryParams['input_string'] <- input.string

      queryParams['model'] <- model

      urlPath <- "/text/text/entity-extraction/"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        object$new()$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }

    },
    GetVersionsTextTextEntityExtractionGet = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      urlPath <- "/text/text/entity-extraction/"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        object$new()$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }

    }
  )
)
