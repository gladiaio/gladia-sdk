/*
 * body_apply_image_text_asciify__post.h
 *
 * 
 */

#ifndef _body_apply_image_text_asciify__post_H_
#define _body_apply_image_text_asciify__post_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct body_apply_image_text_asciify__post_t {
    binary_t* image; //binary

} body_apply_image_text_asciify__post_t;

body_apply_image_text_asciify__post_t *body_apply_image_text_asciify__post_create(
    binary_t* image
);

void body_apply_image_text_asciify__post_free(body_apply_image_text_asciify__post_t *body_apply_image_text_asciify__post);

body_apply_image_text_asciify__post_t *body_apply_image_text_asciify__post_parseFromJSON(cJSON *body_apply_image_text_asciify__postJSON);

cJSON *body_apply_image_text_asciify__post_convertToJSON(body_apply_image_text_asciify__post_t *body_apply_image_text_asciify__post);

#endif /* _body_apply_image_text_asciify__post_H_ */

