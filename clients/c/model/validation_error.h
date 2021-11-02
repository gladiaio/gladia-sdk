/*
 * validation_error.h
 *
 * 
 */

#ifndef _validation_error_H_
#define _validation_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct validation_error_t {
    list_t *loc; //primitive container
    char *msg; // string
    char *type; // string

} validation_error_t;

validation_error_t *validation_error_create(
    list_t *loc,
    char *msg,
    char *type
);

void validation_error_free(validation_error_t *validation_error);

validation_error_t *validation_error_parseFromJSON(cJSON *validation_errorJSON);

cJSON *validation_error_convertToJSON(validation_error_t *validation_error);

#endif /* _validation_error_H_ */

