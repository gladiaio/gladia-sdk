#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the keyword-extraction task for a given models
//
object_t*
TextTextKeywordExtractionAPI_applyTextTextKeywordExtractionPost(apiClient_t *apiClient ,char * text ,model_e model);


// Get list of models available for keyword-extraction
//
object_t*
TextTextKeywordExtractionAPI_getVersionsTextTextKeywordExtractionGet(apiClient_t *apiClient);


