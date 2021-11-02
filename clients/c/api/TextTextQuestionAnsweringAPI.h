#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the question-answering task for a given models
//
object_t*
TextTextQuestionAnsweringAPI_applyTextTextQuestionAnsweringPost(apiClient_t *apiClient ,char * context ,char * question ,model_e model);


// Get list of models available for question-answering
//
object_t*
TextTextQuestionAnsweringAPI_getVersionsTextTextQuestionAnsweringGet(apiClient_t *apiClient);


