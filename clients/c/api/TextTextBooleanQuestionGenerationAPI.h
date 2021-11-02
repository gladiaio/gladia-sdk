#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the boolean-question-generation task for a given models
//
object_t*
TextTextBooleanQuestionGenerationAPI_applyTextTextBooleanQuestionGenerationPost(apiClient_t *apiClient ,char * text ,char * model);


// Get list of models available for boolean-question-generation
//
object_t*
TextTextBooleanQuestionGenerationAPI_getVersionsTextTextBooleanQuestionGenerationGet(apiClient_t *apiClient);


