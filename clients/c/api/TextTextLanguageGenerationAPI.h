#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the language-generation task for a given models
//
object_t*
TextTextLanguageGenerationAPI_applyTextTextLanguageGenerationPost(apiClient_t *apiClient ,char * text ,model_e model);


// Get list of models available for language-generation
//
object_t*
TextTextLanguageGenerationAPI_getVersionsTextTextLanguageGenerationGet(apiClient_t *apiClient);


