#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the uncolorization task for a given models
//
object_t*
ImageImageUncolorizationAPI_applyImageImageUncolorizationPost(apiClient_t *apiClient ,binary_t* image ,model_e model);


// Get list of models available for uncolorization
//
object_t*
ImageImageUncolorizationAPI_getVersionsImageImageUncolorizationGet(apiClient_t *apiClient);


