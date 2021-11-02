/*
 * body_apply_video_video_frame_interpolation__post.h
 *
 * 
 */

#ifndef _body_apply_video_video_frame_interpolation__post_H_
#define _body_apply_video_video_frame_interpolation__post_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct body_apply_video_video_frame_interpolation__post_t {
    binary_t* video; //binary

} body_apply_video_video_frame_interpolation__post_t;

body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post_create(
    binary_t* video
);

void body_apply_video_video_frame_interpolation__post_free(body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post);

body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post_parseFromJSON(cJSON *body_apply_video_video_frame_interpolation__postJSON);

cJSON *body_apply_video_video_frame_interpolation__post_convertToJSON(body_apply_video_video_frame_interpolation__post_t *body_apply_video_video_frame_interpolation__post);

#endif /* _body_apply_video_video_frame_interpolation__post_H_ */

