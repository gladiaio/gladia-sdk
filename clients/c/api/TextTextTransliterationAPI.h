#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the transliteration task for a given models
//
object_t*
TextTextTransliterationAPI_applyTextTextTransliterationPost(apiClient_t *apiClient ,char * text ,char * language ,char * model);


// Get list of models available for transliteration
//
object_t*
TextTextTransliterationAPI_getVersionsTextTextTransliterationGet(apiClient_t *apiClient);


