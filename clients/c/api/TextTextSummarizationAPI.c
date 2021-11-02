#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextSummarizationAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the summarization task for a given models
//
object_t*
TextTextSummarizationAPI_applyTextTextSummarizationPost(apiClient_t *apiClient ,char * text ,char * source_language ,int max_length ,int min_length ,char * model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/summarization/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/summarization/");




    // query parameters
    char *keyQuery_text;
    char * valueQuery_text;
    keyValuePair_t *keyPairQuery_text = 0;
    if (text)
    {
        keyQuery_text = strdup("text");
        valueQuery_text = strdup((text));
        keyPairQuery_text = keyValuePair_create(keyQuery_text, valueQuery_text);
        list_addElement(localVarQueryParameters,keyPairQuery_text);
    }

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
    char *keyQuery_max_length;
    int valueQuery_max_length;
    keyValuePair_t *keyPairQuery_max_length = 0;
    if (max_length)
    {
        keyQuery_max_length = strdup("max_length");
        valueQuery_max_length = (max_length);
        keyPairQuery_max_length = keyValuePair_create(keyQuery_max_length, &valueQuery_max_length);
        list_addElement(localVarQueryParameters,keyPairQuery_max_length);
    }

    // query parameters
    char *keyQuery_min_length;
    int valueQuery_min_length;
    keyValuePair_t *keyPairQuery_min_length = 0;
    if (min_length)
    {
        keyQuery_min_length = strdup("min_length");
        valueQuery_min_length = (min_length);
        keyPairQuery_min_length = keyValuePair_create(keyQuery_min_length, &valueQuery_min_length);
        list_addElement(localVarQueryParameters,keyPairQuery_min_length);
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
    cJSON *TextTextSummarizationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextSummarizationAPIlocalVarJSON);
    cJSON_Delete(TextTextSummarizationAPIlocalVarJSON);
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
    free(keyQuery_text);
    free(valueQuery_text);
    keyValuePair_free(keyPairQuery_text);
    free(keyQuery_source_language);
    free(valueQuery_source_language);
    keyValuePair_free(keyPairQuery_source_language);
    free(keyQuery_max_length);
    keyValuePair_free(keyPairQuery_max_length);
    free(keyQuery_min_length);
    keyValuePair_free(keyPairQuery_min_length);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for summarization
//
object_t*
TextTextSummarizationAPI_getVersionsTextTextSummarizationGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/summarization/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/summarization/");



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
    cJSON *TextTextSummarizationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextSummarizationAPIlocalVarJSON);
    cJSON_Delete(TextTextSummarizationAPIlocalVarJSON);
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

