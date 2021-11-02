#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "body_apply_image_image_background_removal__post.h"



body_apply_image_image_background_removal__post_t *body_apply_image_image_background_removal__post_create(
    binary_t* image
    ) {
	body_apply_image_image_background_removal__post_t *body_apply_image_image_background_removal__post_local_var = malloc(sizeof(body_apply_image_image_background_removal__post_t));
    if (!body_apply_image_image_background_removal__post_local_var) {
        return NULL;
    }
	body_apply_image_image_background_removal__post_local_var->image = image;

	return body_apply_image_image_background_removal__post_local_var;
}


void body_apply_image_image_background_removal__post_free(body_apply_image_image_background_removal__post_t *body_apply_image_image_background_removal__post) {
    listEntry_t *listEntry;
    free(body_apply_image_image_background_removal__post->image->data);
	free(body_apply_image_image_background_removal__post);
}

cJSON *body_apply_image_image_background_removal__post_convertToJSON(body_apply_image_image_background_removal__post_t *body_apply_image_image_background_removal__post) {
	cJSON *item = cJSON_CreateObject();

	// body_apply_image_image_background_removal__post->image
    if (!body_apply_image_image_background_removal__post->image) {
        goto fail;
    }
    
    char* encoded_str_image = base64encode(body_apply_image_image_background_removal__post->image->data,body_apply_image_image_background_removal__post->image->len);
    if(cJSON_AddStringToObject(item, "image", encoded_str_image) == NULL) {
    goto fail; //Binary
    }
    free (encoded_str_image);

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

body_apply_image_image_background_removal__post_t *body_apply_image_image_background_removal__post_parseFromJSON(cJSON *body_apply_image_image_background_removal__postJSON){

    body_apply_image_image_background_removal__post_t *body_apply_image_image_background_removal__post_local_var = NULL;

    // body_apply_image_image_background_removal__post->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(body_apply_image_image_background_removal__postJSON, "image");
    if (!image) {
        goto end;
    }

    binary_t* decoded_str_image;
    
    if(!cJSON_IsString(image))
    {
    goto end; //Binary
    }
    char* decoded = base64decode(image->valuestring, strlen(image->valuestring));
    decoded_str_image->data = malloc(strlen(decoded) - 1);
    if (!decoded_str_image->data) {
		goto end;
	}
    memcpy(decoded_str_image->data,decoded,(strlen(decoded)-1));
    decoded_str_image->len = strlen(decoded) - 1;


    body_apply_image_image_background_removal__post_local_var = body_apply_image_image_background_removal__post_create (
        decoded_str_image
        );

    return body_apply_image_image_background_removal__post_local_var;
end:
    return NULL;

}
