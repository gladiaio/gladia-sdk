# FastAPI
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
# 
# Generated by: https://openapi-generator.tech

#' @title TextTextSentenceParaphraser operations
#' @description openapi.TextTextSentenceParaphraser
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' ApplyTextTextSentenceParaphraserPost Apply model for the sentence-paraphraser task for a given models
#'
#'
#' GetVersionsTextTextSentenceParaphraserGet Get list of models available for sentence-paraphraser
#'
#' }
#'
#' @importFrom caTools base64encode
#' @export
TextTextSentenceParaphraserApi <- R6::R6Class(
  'TextTextSentenceParaphraserApi',
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
    ApplyTextTextSentenceParaphraserPost = function(context='Once, a group of frogs was roaming around the forest in search of water.', model='ramsrigouthamg-t5-large-paraphraser-diverse-high-quality', ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      queryParams['context'] <- context

      queryParams['model'] <- model

      urlPath <- "/text/text/sentence-paraphraser/"

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
    GetVersionsTextTextSentenceParaphraserGet = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      urlPath <- "/text/text/sentence-paraphraser/"

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
