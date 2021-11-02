#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the restoration task for a given models
//
object_t*
ImageImageRestorationAPI_applyImageImageRestorationPost(apiClient_t *apiClient ,binary_t* image ,char * model);


// Get list of models available for restoration
//
object_t*
ImageImageRestorationAPI_getVersionsImageImageRestorationGet(apiClient_t *apiClient);


