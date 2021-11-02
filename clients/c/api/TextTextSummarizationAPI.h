#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the summarization task for a given models
//
object_t*
TextTextSummarizationAPI_applyTextTextSummarizationPost(apiClient_t *apiClient ,char * text ,char * source_language ,int max_length ,int min_length ,char * model);


// Get list of models available for summarization
//
object_t*
TextTextSummarizationAPI_getVersionsTextTextSummarizationGet(apiClient_t *apiClient);


