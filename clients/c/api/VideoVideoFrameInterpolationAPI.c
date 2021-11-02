#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "VideoVideoFrameInterpolationAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the frame-interpolation task for a given models
//
object_t*
VideoVideoFrameInterpolationAPI_applyVideoVideoFrameInterpolationPost(apiClient_t *apiClient ,binary_t* video ,char * model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_create();
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/video/video/frame-interpolation/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/video/video/frame-interpolation/");




    // query parameters
    char *keyQuery_model;
    char * valueQuery_model;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = strdup((model));
        keyPairQuery_model = keyValuePair_create(keyQuery_model, valueQuery_model);
        list_addElement(localVarQueryParameters,keyPairQuery_model);
    }

    // form parameters
    char *keyForm_video;
    binary_t* valueForm_video;
    keyValuePair_t *keyPairForm_video = 0;
    if (video != NULL)
    {
        keyForm_video = strdup("video");
        valueForm_video = video;
        keyPairForm_video = keyValuePair_create(keyForm_video, &valueForm_video);
        list_addElement(localVarFormParameters,keyPairForm_video); //file adding
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Successful Response");
    }
    if (apiClient->response_code == 422) {
        printf("%s\n","Validation Error");
    }
    //nonprimitive not container
    cJSON *VideoVideoFrameInterpolationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(VideoVideoFrameInterpolationAPIlocalVarJSON);
    cJSON_Delete(VideoVideoFrameInterpolationAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
    }
    list_free(localVarQueryParameters);
    
    list_free(localVarFormParameters);
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    free(keyForm_video);
//    free(fileVar_video->data);
//    free(fileVar_video);
    free(keyPairForm_video);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for frame-interpolation
//
object_t*
VideoVideoFrameInterpolationAPI_getVersionsVideoVideoFrameInterpolationGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/video/video/frame-interpolation/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/video/video/frame-interpolation/");



    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    if (apiClient->response_code == 200) {
        printf("%s\n","Successful Response");
    }
    //nonprimitive not container
    cJSON *VideoVideoFrameInterpolationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(VideoVideoFrameInterpolationAPIlocalVarJSON);
    cJSON_Delete(VideoVideoFrameInterpolationAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
    }
    
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    return NULL;

}

