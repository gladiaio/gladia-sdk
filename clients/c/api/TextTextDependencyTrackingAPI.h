#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the dependency-tracking task for a given models
//
object_t*
TextTextDependencyTrackingAPI_applyTextTextDependencyTrackingPost(apiClient_t *apiClient ,char * input_string ,char * model);


// Get list of models available for dependency-tracking
//
object_t*
TextTextDependencyTrackingAPI_getVersionsTextTextDependencyTrackingGet(apiClient_t *apiClient);


