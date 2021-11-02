#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the frame-interpolation task for a given models
//
object_t*
VideoVideoFrameInterpolationAPI_applyVideoVideoFrameInterpolationPost(apiClient_t *apiClient ,binary_t* video ,char * model);


// Get list of models available for frame-interpolation
//
object_t*
VideoVideoFrameInterpolationAPI_getVersionsVideoVideoFrameInterpolationGet(apiClient_t *apiClient);


