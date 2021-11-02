#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the named-entity-recognition task for a given models
//
object_t*
TextTextNamedEntityRecognitionAPI_applyTextTextNamedEntityRecognitionPost(apiClient_t *apiClient ,char * text ,model_e model);


// Get list of models available for named-entity-recognition
//
object_t*
TextTextNamedEntityRecognitionAPI_getVersionsTextTextNamedEntityRecognitionGet(apiClient_t *apiClient);


