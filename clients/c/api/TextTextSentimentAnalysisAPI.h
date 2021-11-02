#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the sentiment-analysis task for a given models
//
object_t*
TextTextSentimentAnalysisAPI_applyTextTextSentimentAnalysisPost(apiClient_t *apiClient ,char * text ,model_e model);


// Get list of models available for sentiment-analysis
//
object_t*
TextTextSentimentAnalysisAPI_getVersionsTextTextSentimentAnalysisGet(apiClient_t *apiClient);


