#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the colorization task for a given models
//
object_t*
ImageImageColorizationAPI_applyImageImageColorizationPost(apiClient_t *apiClient ,binary_t* image ,model_e model);


// Get list of models available for colorization
//
object_t*
ImageImageColorizationAPI_getVersionsImageImageColorizationGet(apiClient_t *apiClient);


