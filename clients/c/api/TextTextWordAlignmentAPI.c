#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextWordAlignmentAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the word-alignment task for a given models
//
object_t*
TextTextWordAlignmentAPI_applyTextTextWordAlignmentPost(apiClient_t *apiClient ,char * input_string_language_1 ,char * input_string_language_2 ,model_e model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/word-alignment/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/word-alignment/");




    // query parameters
    char *keyQuery_input_string_language_1;
    char * valueQuery_input_string_language_1;
    keyValuePair_t *keyPairQuery_input_string_language_1 = 0;
    if (input_string_language_1)
    {
        keyQuery_input_string_language_1 = strdup("input_string_language_1");
        valueQuery_input_string_language_1 = strdup((input_string_language_1));
        keyPairQuery_input_string_language_1 = keyValuePair_create(keyQuery_input_string_language_1, valueQuery_input_string_language_1);
        list_addElement(localVarQueryParameters,keyPairQuery_input_string_language_1);
    }

    // query parameters
    char *keyQuery_input_string_language_2;
    char * valueQuery_input_string_language_2;
    keyValuePair_t *keyPairQuery_input_string_language_2 = 0;
    if (input_string_language_2)
    {
        keyQuery_input_string_language_2 = strdup("input_string_language_2");
        valueQuery_input_string_language_2 = strdup((input_string_language_2));
        keyPairQuery_input_string_language_2 = keyValuePair_create(keyQuery_input_string_language_2, valueQuery_input_string_language_2);
        list_addElement(localVarQueryParameters,keyPairQuery_input_string_language_2);
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
    list_addElement(localVarHeaderType,"application/json"); //produces
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
    cJSON *TextTextWordAlignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextWordAlignmentAPIlocalVarJSON);
    cJSON_Delete(TextTextWordAlignmentAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
    }
    list_free(localVarQueryParameters);
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
    free(keyQuery_input_string_language_1);
    free(valueQuery_input_string_language_1);
    keyValuePair_free(keyPairQuery_input_string_language_1);
    free(keyQuery_input_string_language_2);
    free(valueQuery_input_string_language_2);
    keyValuePair_free(keyPairQuery_input_string_language_2);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for word-alignment
//
object_t*
TextTextWordAlignmentAPI_getVersionsTextTextWordAlignmentGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/word-alignment/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/word-alignment/");



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
    cJSON *TextTextWordAlignmentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextWordAlignmentAPIlocalVarJSON);
    cJSON_Delete(TextTextWordAlignmentAPIlocalVarJSON);
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

