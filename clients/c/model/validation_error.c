#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "validation_error.h"



validation_error_t *validation_error_create(
    list_t *loc,
    char *msg,
    char *type
    ) {
	validation_error_t *validation_error_local_var = malloc(sizeof(validation_error_t));
    if (!validation_error_local_var) {
        return NULL;
    }
	validation_error_local_var->loc = loc;
	validation_error_local_var->msg = msg;
	validation_error_local_var->type = type;

	return validation_error_local_var;
}


void validation_error_free(validation_error_t *validation_error) {
    listEntry_t *listEntry;
	list_ForEach(listEntry, validation_error->loc) {
		free(listEntry->data);
	}
	list_free(validation_error->loc);
    free(validation_error->msg);
    free(validation_error->type);
	free(validation_error);
}

cJSON *validation_error_convertToJSON(validation_error_t *validation_error) {
	cJSON *item = cJSON_CreateObject();

	// validation_error->loc
    if (!validation_error->loc) {
        goto fail;
    }
    
	cJSON *loc = cJSON_AddArrayToObject(item, "loc");
	if(loc == NULL) {
		goto fail; //primitive container
	}

	listEntry_t *locListEntry;
    list_ForEach(locListEntry, validation_error->loc) {
    if(cJSON_AddStringToObject(loc, "", (char*)locListEntry->data) == NULL)
    {
        goto fail;
    }
    }


	// validation_error->msg
    if (!validation_error->msg) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "msg", validation_error->msg) == NULL) {
    goto fail; //String
    }


	// validation_error->type
    if (!validation_error->type) {
        goto fail;
    }
    
    if(cJSON_AddStringToObject(item, "type", validation_error->type) == NULL) {
    goto fail; //String
    }

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

validation_error_t *validation_error_parseFromJSON(cJSON *validation_errorJSON){

    validation_error_t *validation_error_local_var = NULL;

    // validation_error->loc
    cJSON *loc = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "loc");
    if (!loc) {
        goto end;
    }

    list_t *locList;
    
    cJSON *loc_local;
    if(!cJSON_IsArray(loc)) {
        goto end;//primitive container
    }
    locList = list_create();

    cJSON_ArrayForEach(loc_local, loc)
    {
        if(!cJSON_IsString(loc_local))
        {
            goto end;
        }
        list_addElement(locList , strdup(loc_local->valuestring));
    }

    // validation_error->msg
    cJSON *msg = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "msg");
    if (!msg) {
        goto end;
    }

    
    if(!cJSON_IsString(msg))
    {
    goto end; //String
    }

    // validation_error->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(validation_errorJSON, "type");
    if (!type) {
        goto end;
    }

    
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }


    validation_error_local_var = validation_error_create (
        locList,
        strdup(msg->valuestring),
        strdup(type->valuestring)
        );

    return validation_error_local_var;
end:
    return NULL;

}
