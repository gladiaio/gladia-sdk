#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the programming-language-generation task for a given models
//
object_t*
TextTextProgrammingLanguageGenerationAPI_applyTextTextProgrammingLanguageGenerationPost(apiClient_t *apiClient ,char * code_snippet ,model_e model);


// Get list of models available for programming-language-generation
//
object_t*
TextTextProgrammingLanguageGenerationAPI_getVersionsTextTextProgrammingLanguageGenerationGet(apiClient_t *apiClient);


