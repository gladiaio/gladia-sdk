#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the word-alignment task for a given models
//
object_t*
TextTextWordAlignmentAPI_applyTextTextWordAlignmentPost(apiClient_t *apiClient ,char * input_string_language_1 ,char * input_string_language_2 ,model_e model);


// Get list of models available for word-alignment
//
object_t*
TextTextWordAlignmentAPI_getVersionsTextTextWordAlignmentGet(apiClient_t *apiClient);


