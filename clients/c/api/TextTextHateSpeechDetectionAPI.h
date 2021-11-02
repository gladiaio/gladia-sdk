#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/http_validation_error.h"
#include "../model/object.h"


// Apply model for the hate-speech-detection task for a given models
//
object_t*
TextTextHateSpeechDetectionAPI_applyTextTextHateSpeechDetectionPost(apiClient_t *apiClient ,char * text ,model_e model);


// Get list of models available for hate-speech-detection
//
object_t*
TextTextHateSpeechDetectionAPI_getVersionsTextTextHateSpeechDetectionGet(apiClient_t *apiClient);


