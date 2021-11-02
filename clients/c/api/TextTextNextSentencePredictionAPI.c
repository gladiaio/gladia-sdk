#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextNextSentencePredictionAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the next-sentence-prediction task for a given models
//
object_t*
TextTextNextSentencePredictionAPI_applyTextTextNextSentencePredictionPost(apiClient_t *apiClient ,char * sentence_1 ,char * sentence_2 ,model_e model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/next-sentence-prediction/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/next-sentence-prediction/");




    // query parameters
    char *keyQuery_sentence_1;
    char * valueQuery_sentence_1;
    keyValuePair_t *keyPairQuery_sentence_1 = 0;
    if (sentence_1)
    {
        keyQuery_sentence_1 = strdup("sentence_1");
        valueQuery_sentence_1 = strdup((sentence_1));
        keyPairQuery_sentence_1 = keyValuePair_create(keyQuery_sentence_1, valueQuery_sentence_1);
        list_addElement(localVarQueryParameters,keyPairQuery_sentence_1);
    }

    // query parameters
    char *keyQuery_sentence_2;
    char * valueQuery_sentence_2;
    keyValuePair_t *keyPairQuery_sentence_2 = 0;
    if (sentence_2)
    {
        keyQuery_sentence_2 = strdup("sentence_2");
        valueQuery_sentence_2 = strdup((sentence_2));
        keyPairQuery_sentence_2 = keyValuePair_create(keyQuery_sentence_2, valueQuery_sentence_2);
        list_addElement(localVarQueryParameters,keyPairQuery_sentence_2);
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
    cJSON *TextTextNextSentencePredictionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextNextSentencePredictionAPIlocalVarJSON);
    cJSON_Delete(TextTextNextSentencePredictionAPIlocalVarJSON);
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
    free(keyQuery_sentence_1);
    free(valueQuery_sentence_1);
    keyValuePair_free(keyPairQuery_sentence_1);
    free(keyQuery_sentence_2);
    free(valueQuery_sentence_2);
    keyValuePair_free(keyPairQuery_sentence_2);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for next-sentence-prediction
//
object_t*
TextTextNextSentencePredictionAPI_getVersionsTextTextNextSentencePredictionGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/next-sentence-prediction/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/next-sentence-prediction/");



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
    cJSON *TextTextNextSentencePredictionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextNextSentencePredictionAPIlocalVarJSON);
    cJSON_Delete(TextTextNextSentencePredictionAPIlocalVarJSON);
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

