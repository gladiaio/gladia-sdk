#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the autocorrect task for a given models
//
object_t*
TextTextAutocorrectAPI_applyTextTextAutocorrectPost(apiClient_t *apiClient ,char * sentence ,model_e model);


// Get list of models available for autocorrect
//
object_t*
TextTextAutocorrectAPI_getVersionsTextTextAutocorrectGet(apiClient_t *apiClient);


