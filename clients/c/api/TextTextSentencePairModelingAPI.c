#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextSentencePairModelingAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the sentence-pair-modeling task for a given models
//
object_t*
TextTextSentencePairModelingAPI_applyTextTextSentencePairModelingPost(apiClient_t *apiClient ,char * sentence ,char * model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/sentence-pair-modeling/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/sentence-pair-modeling/");




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
    char * valueQuery_model;
    keyValuePair_t *keyPairQuery_model = 0;
    if (model)
    {
        keyQuery_model = strdup("model");
        valueQuery_model = strdup((model));
        keyPairQuery_model = keyValuePair_create(keyQuery_model, valueQuery_model);
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
    cJSON *TextTextSentencePairModelingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextSentencePairModelingAPIlocalVarJSON);
    cJSON_Delete(TextTextSentencePairModelingAPIlocalVarJSON);
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

// Get list of models available for sentence-pair-modeling
//
object_t*
TextTextSentencePairModelingAPI_getVersionsTextTextSentencePairModelingGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/sentence-pair-modeling/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/sentence-pair-modeling/");



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
    cJSON *TextTextSentencePairModelingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextSentencePairModelingAPIlocalVarJSON);
    cJSON_Delete(TextTextSentencePairModelingAPIlocalVarJSON);
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

