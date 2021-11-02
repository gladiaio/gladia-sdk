#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the translation task for a given models
//
object_t*
TextTextTranslationAPI_applyTextTextTranslationPost(apiClient_t *apiClient ,char * input_string ,char * source_language ,char * target_language ,char * model);


// Get list of models available for translation
//
object_t*
TextTextTranslationAPI_getVersionsTextTextTranslationGet(apiClient_t *apiClient);


