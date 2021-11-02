#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextSentenceParaphraserAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the sentence-paraphraser task for a given models
//
object_t*
TextTextSentenceParaphraserAPI_applyTextTextSentenceParaphraserPost(apiClient_t *apiClient ,char * context ,model_e model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/sentence-paraphraser/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/sentence-paraphraser/");




    // query parameters
    char *keyQuery_context;
    char * valueQuery_context;
    keyValuePair_t *keyPairQuery_context = 0;
    if (context)
    {
        keyQuery_context = strdup("context");
        valueQuery_context = strdup((context));
        keyPairQuery_context = keyValuePair_create(keyQuery_context, valueQuery_context);
        list_addElement(localVarQueryParameters,keyPairQuery_context);
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
    cJSON *TextTextSentenceParaphraserAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextSentenceParaphraserAPIlocalVarJSON);
    cJSON_Delete(TextTextSentenceParaphraserAPIlocalVarJSON);
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
    free(keyQuery_context);
    free(valueQuery_context);
    keyValuePair_free(keyPairQuery_context);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for sentence-paraphraser
//
object_t*
TextTextSentenceParaphraserAPI_getVersionsTextTextSentenceParaphraserGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/sentence-paraphraser/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/sentence-paraphraser/");



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
    cJSON *TextTextSentenceParaphraserAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextSentenceParaphraserAPIlocalVarJSON);
    cJSON_Delete(TextTextSentenceParaphraserAPIlocalVarJSON);
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

