#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the plural task for a given models
//
object_t*
TextTextPluralAPI_applyTextTextPluralPost(apiClient_t *apiClient ,char * word ,int count ,model_e model);


// Get list of models available for plural
//
object_t*
TextTextPluralAPI_getVersionsTextTextPluralGet(apiClient_t *apiClient);


