#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "TextTextProgrammingLanguageGenerationAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Apply model for the programming-language-generation task for a given models
//
object_t*
TextTextProgrammingLanguageGenerationAPI_applyTextTextProgrammingLanguageGenerationPost(apiClient_t *apiClient ,char * code_snippet ,model_e model)
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/programming-language-generation/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/programming-language-generation/");




    // query parameters
    char *keyQuery_code_snippet;
    char * valueQuery_code_snippet;
    keyValuePair_t *keyPairQuery_code_snippet = 0;
    if (code_snippet)
    {
        keyQuery_code_snippet = strdup("code_snippet");
        valueQuery_code_snippet = strdup((code_snippet));
        keyPairQuery_code_snippet = keyValuePair_create(keyQuery_code_snippet, valueQuery_code_snippet);
        list_addElement(localVarQueryParameters,keyPairQuery_code_snippet);
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
    cJSON *TextTextProgrammingLanguageGenerationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextProgrammingLanguageGenerationAPIlocalVarJSON);
    cJSON_Delete(TextTextProgrammingLanguageGenerationAPIlocalVarJSON);
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
    free(keyQuery_code_snippet);
    free(valueQuery_code_snippet);
    keyValuePair_free(keyPairQuery_code_snippet);
    free(keyQuery_model);
    free(valueQuery_model);
    keyValuePair_free(keyPairQuery_model);
    return elementToReturn;
end:
    return NULL;

}

// Get list of models available for programming-language-generation
//
object_t*
TextTextProgrammingLanguageGenerationAPI_getVersionsTextTextProgrammingLanguageGenerationGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/text/text/programming-language-generation/")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/text/text/programming-language-generation/");



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
    cJSON *TextTextProgrammingLanguageGenerationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    object_t *elementToReturn = object_parseFromJSON(TextTextProgrammingLanguageGenerationAPIlocalVarJSON);
    cJSON_Delete(TextTextProgrammingLanguageGenerationAPIlocalVarJSON);
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

