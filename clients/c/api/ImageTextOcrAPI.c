#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ImageTextOcrAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the ocr task for a given models
//
object_t*
ImageTextOcrAPI_applyImageTextOcrPost(apiClient_t *apiClient ,binary_t* image ,char * source_language ,model_e model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_create();
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/image/text/ocr/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/image/text/ocr/");




    // query parameters
    char *keyQuery_source_language;
    char * valueQuery_source_language;
    keyValuePair_t *keyPairQuery_source_language = 0;
    if (source_language)
    {
        keyQuery_source_language = strdup("source_language");
        valueQuery_source_language = strdup((source_language));
        keyPairQuery_source_language = keyValuePair_create(keyQuery_source_language, valueQuery_source_language);
        list_addElement(localVarQueryParameters,keyPairQuery_source_language);
    }

    // query parameters
    char *keyQuery_model;
    model_e valueQuery_model;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = (model);
        keyPairQuery_model = keyValuePair_create(keyQuery_model, (void *)valueQuery_model);
        list_addElement(localVarQueryParameters,keyPairQuery_model);
    }

    // form parameters
    char *keyForm_image;
    binary_t* valueForm_image;
    keyValuePair_t *keyPairForm_image = 0;
    if (image != NULL)
    {
        keyForm_image = strdup("image");
        valueForm_image = image;
        keyPairForm_image = keyValuePair_create(keyForm_image, &valueForm_image);
        list_addElement(localVarFormParameters,keyPairForm_image); //file adding
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
    cJSON *ImageTextOcrAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(ImageTextOcrAPIlocalVarJSON);
    cJSON_Delete(ImageTextOcrAPIlocalVarJSON);
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
    free(keyQuery_source_language);
    free(valueQuery_source_language);
    keyValuePair_free(keyPairQuery_source_language);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    free(keyForm_image);
//    free(fileVar_image->data);
//    free(fileVar_image);
    free(keyPairForm_image);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for ocr
//
object_t*
ImageTextOcrAPI_getVersionsImageTextOcrGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/image/text/ocr/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/image/text/ocr/");



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
    cJSON *ImageTextOcrAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(ImageTextOcrAPIlocalVarJSON);
    cJSON_Delete(ImageTextOcrAPIlocalVarJSON);
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

