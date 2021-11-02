#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "body_apply_video_video_frame_interpolation__post.h"



body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post_create(
    binary_t* video
    ) {
	body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post_local_var = malloc(sizeof(body_apply_video_video_frame_interpolation__post_t));
    if (!body_apply_video_video_frame_interpolation__post_local_var) {
        return NULL;
    }
	body_apply_video_video_frame_interpolation__post_local_var->video = video;

	return body_apply_video_video_frame_interpolation__post_local_var;
}


void body_apply_video_video_frame_interpolation__post_free(body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post) {
    listEntry_t *listEntry;
    free(body_apply_video_video_frame_interpolation__post->video->data);
	free(body_apply_video_video_frame_interpolation__post);
}

cJSON *body_apply_video_video_frame_interpolation__post_convertToJSON(body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post) {
	cJSON *item = cJSON_CreateObject();

	// body_apply_video_video_frame_interpolation__post->video
    if (!body_apply_video_video_frame_interpolation__post->video) {
        goto fail;
    }
    
    char* encoded_str_video = base64encode(body_apply_video_video_frame_interpolation__post->video->data,body_apply_video_video_frame_interpolation__post->video->len);
    if(cJSON_AddStringToObject(item, "video", encoded_str_video) == NULL) {
    goto fail; //Binary
    }
    free (encoded_str_video);

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post_parseFromJSON(cJSON *body_apply_video_video_frame_interpolation__postJSON){

    body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post_local_var = NULL;

    // body_apply_video_video_frame_interpolation__post->video
    cJSON *video = cJSON_GetObjectItemCaseSensitive(body_apply_video_video_frame_interpolation__postJSON, "video");
    if (!video) {
        goto end;
    }

    binary_t* decoded_str_video;
    
    if(!cJSON_IsString(video))
    {
    goto end; //Binary
    }
    char* decoded = base64decode(video->valuestring, strlen(video->valuestring));
    decoded_str_video->data = malloc(strlen(decoded) - 1);
    if (!decoded_str_video->data) {
		goto end;
	}
    memcpy(decoded_str_video->data,decoded,(strlen(decoded)-1));
    decoded_str_video->len = strlen(decoded) - 1;


    body_apply_video_video_frame_interpolation__post_local_var = body_apply_video_video_frame_interpolation__post_create (
        decoded_str_video
        );

    return body_apply_video_video_frame_interpolation__post_local_var;
end:
    return NULL;

}
