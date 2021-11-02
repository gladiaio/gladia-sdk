#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Body_apply_video_video_frame_interpolation__post.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Body_apply_video_video_frame_interpolation__post::Body_apply_video_video_frame_interpolation__post()
{
	//__init();
}

Body_apply_video_video_frame_interpolation__post::~Body_apply_video_video_frame_interpolation__post()
{
	//__cleanup();
}

void
Body_apply_video_video_frame_interpolation__post::__init()
{
	//video = std::string();
}

void
Body_apply_video_video_frame_interpolation__post::__cleanup()
{
	//if(video != NULL) {
	//
	//delete video;
	//video = NULL;
	//}
	//
}

void
Body_apply_video_video_frame_interpolation__post::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *videoKey = "video";
	node = json_object_get_member(pJsonObject, videoKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&video, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&video);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Body_apply_video_video_frame_interpolation__post::Body_apply_video_video_frame_interpolation__post(char* json)
{
	this->fromJson(json);
}

char*
Body_apply_video_video_frame_interpolation__post::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getVideo();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getVideo());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *videoKey = "video";
	json_object_set_member(pJsonObject, videoKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Body_apply_video_video_frame_interpolation__post::getVideo()
{
	return video;
}

void
Body_apply_video_video_frame_interpolation__post::setVideo(std::string  video)
{
	this->video = video;
}


