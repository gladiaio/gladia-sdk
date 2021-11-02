#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the entity-extraction task for a given models
//
object_t*
TextTextEntityExtractionAPI_applyTextTextEntityExtractionPost(apiClient_t *apiClient ,char * input_string ,model_e model);


// Get list of models available for entity-extraction
//
object_t*
TextTextEntityExtractionAPI_getVersionsTextTextEntityExtractionGet(apiClient_t *apiClient);


