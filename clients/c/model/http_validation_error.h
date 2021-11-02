/*
 * http_validation_error.h
 *
 * 
 */

#ifndef _http_validation_error_H_
#define _http_validation_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "validation_error.h"



typedef struct http_validation_error_t {
    list_t *detail; //nonprimitive container

} http_validation_error_t;

http_validation_error_t *http_validation_error_create(
    list_t *detail
);

void http_validation_error_free(http_validation_error_t *http_validation_error);

http_validation_error_t *http_validation_error_parseFromJSON(cJSON *http_validation_errorJSON);

cJSON *http_validation_error_convertToJSON(http_validation_error_t *http_validation_error);

#endif /* _http_validation_error_H_ */

