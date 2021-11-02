#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextAutocorrectAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the autocorrect task for a given models
//
object_t*
TextTextAutocorrectAPI_applyTextTextAutocorrectPost(apiClient_t *apiClient ,char * sentence ,model_e model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/autocorrect/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/autocorrect/");




    // query parameters
    char *keyQuery_sentence;
    char * valueQuery_sentence;
    keyValuePair_t *keyPairQuery_sentence = 0;
    if (sentence)
    {
        keyQuery_sentence = strdup("sentence");
        valueQuery_sentence = strdup((sentence));
        keyPairQuery_sentence = keyValuePair_create(keyQuery_sentence, valueQuery_sentence);
        list_addElement(localVarQueryParameters,keyPairQuery_sentence);
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
    cJSON *TextTextAutocorrectAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextAutocorrectAPIlocalVarJSON);
    cJSON_Delete(TextTextAutocorrectAPIlocalVarJSON);
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
    free(keyQuery_sentence);
    free(valueQuery_sentence);
    keyValuePair_free(keyPairQuery_sentence);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for autocorrect
//
object_t*
TextTextAutocorrectAPI_getVersionsTextTextAutocorrectGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/autocorrect/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/autocorrect/");



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
    cJSON *TextTextAutocorrectAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextAutocorrectAPIlocalVarJSON);
    cJSON_Delete(TextTextAutocorrectAPIlocalVarJSON);
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

