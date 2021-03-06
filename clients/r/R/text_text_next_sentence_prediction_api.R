# FastAPI
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
# 
# Generated by: https://openapi-generator.tech

#' @title TextTextNextSentencePrediction operations
#' @description openapi.TextTextNextSentencePrediction
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' ApplyTextTextNextSentencePredictionPost Apply model for the next-sentence-prediction task for a given models
#'
#'
#' GetVersionsTextTextNextSentencePredictionGet Get list of models available for next-sentence-prediction
#'
#' }
#'
#' @importFrom caTools base64encode
#' @export
TextTextNextSentencePredictionApi <- R6::R6Class(
  'TextTextNextSentencePredictionApi',
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
    ApplyTextTextNextSentencePredictionPost = function(sentence.1='I like you.', sentence.2='But it's not about you.', model='bert-base-uncased', ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      queryParams['sentence_1'] <- sentence.1

      queryParams['sentence_2'] <- sentence.2

      queryParams['model'] <- model

      urlPath <- "/text/text/next-sentence-prediction/"

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
    GetVersionsTextTextNextSentencePredictionGet = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      urlPath <- "/text/text/next-sentence-prediction/"

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
