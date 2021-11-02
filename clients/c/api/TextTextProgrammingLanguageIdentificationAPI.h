#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the programming-language-identification task for a given models
//
object_t*
TextTextProgrammingLanguageIdentificationAPI_applyTextTextProgrammingLanguageIdentificationPost(apiClient_t *apiClient ,char * text ,char * model);


// Get list of models available for programming-language-identification
//
object_t*
TextTextProgrammingLanguageIdentificationAPI_getVersionsTextTextProgrammingLanguageIdentificationGet(apiClient_t *apiClient);


