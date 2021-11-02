#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the face-bluring task for a given models
//
object_t*
ImageImageFaceBluringAPI_applyImageImageFaceBluringPost(apiClient_t *apiClient ,binary_t* image ,model_e model);


// Get list of models available for face-bluring
//
object_t*
ImageImageFaceBluringAPI_getVersionsImageImageFaceBluringGet(apiClient_t *apiClient);


