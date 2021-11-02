#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the similarity task for a given models
//
object_t*
TextTextSimilarityAPI_applyTextTextSimilarityPost(apiClient_t *apiClient ,char * sentence_1 ,char * sentence_2 ,model_e model);


// Get list of models available for similarity
//
object_t*
TextTextSimilarityAPI_getVersionsTextTextSimilarityGet(apiClient_t *apiClient);


