#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the sentence-pair-modeling task for a given models
//
object_t*
TextTextSentencePairModelingAPI_applyTextTextSentencePairModelingPost(apiClient_t *apiClient ,char * sentence ,char * model);


// Get list of models available for sentence-pair-modeling
//
object_t*
TextTextSentencePairModelingAPI_getVersionsTextTextSentencePairModelingGet(apiClient_t *apiClient);


