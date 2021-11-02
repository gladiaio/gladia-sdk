#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the ocr task for a given models
//
object_t*
ImageTextOcrAPI_applyImageTextOcrPost(apiClient_t *apiClient ,binary_t* image ,char * source_language ,model_e model);


// Get list of models available for ocr
//
object_t*
ImageTextOcrAPI_getVersionsImageTextOcrGet(apiClient_t *apiClient);


