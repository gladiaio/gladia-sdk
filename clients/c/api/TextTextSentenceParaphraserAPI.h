#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the sentence-paraphraser task for a given models
//
object_t*
TextTextSentenceParaphraserAPI_applyTextTextSentenceParaphraserPost(apiClient_t *apiClient ,char * context ,model_e model);


// Get list of models available for sentence-paraphraser
//
object_t*
TextTextSentenceParaphraserAPI_getVersionsTextTextSentenceParaphraserGet(apiClient_t *apiClient);


