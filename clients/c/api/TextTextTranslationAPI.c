#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextTranslationAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the translation task for a given models
//
object_t*
TextTextTranslationAPI_applyTextTextTranslationPost(apiClient_t *apiClient ,char * input_string ,char * source_language ,char * target_language ,char * model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/translation/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/translation/");




    // query parameters
    char *keyQuery_input_string;
    char * valueQuery_input_string;
    keyValuePair_t *keyPairQuery_input_string = 0;
    if (input_string)
    {
        keyQuery_input_string = strdup("input_string");
        valueQuery_input_string = strdup((input_string));
        keyPairQuery_input_string = keyValuePair_create(keyQuery_input_string, valueQuery_input_string);
        list_addElement(localVarQueryParameters,keyPairQuery_input_string);
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
    char *keyQuery_target_language;
    char * valueQuery_target_language;
    keyValuePair_t *keyPairQuery_target_language = 0;
    if (target_language)
    {
        keyQuery_target_language = strdup("target_language");
        valueQuery_target_language = strdup((target_language));
        keyPairQuery_target_language = keyValuePair_create(keyQuery_target_language, valueQuery_target_language);
        list_addElement(localVarQueryParameters,keyPairQuery_target_language);
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
    cJSON *TextTextTranslationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextTranslationAPIlocalVarJSON);
    cJSON_Delete(TextTextTranslationAPIlocalVarJSON);
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
    free(keyQuery_input_string);
    free(valueQuery_input_string);
    keyValuePair_free(keyPairQuery_input_string);
    free(keyQuery_source_language);
    free(valueQuery_source_language);
    keyValuePair_free(keyPairQuery_source_language);
    free(keyQuery_target_language);
    free(valueQuery_target_language);
    keyValuePair_free(keyPairQuery_target_language);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for translation
//
object_t*
TextTextTranslationAPI_getVersionsTextTextTranslationGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/translation/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/translation/");



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
    cJSON *TextTextTranslationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextTranslationAPIlocalVarJSON);
    cJSON_Delete(TextTextTranslationAPIlocalVarJSON);
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

