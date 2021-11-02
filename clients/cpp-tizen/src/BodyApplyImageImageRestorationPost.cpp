#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Body_apply_image_image_restoration__post.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Body_apply_image_image_restoration__post::Body_apply_image_image_restoration__post()
{
	//__init();
}

Body_apply_image_image_restoration__post::~Body_apply_image_image_restoration__post()
{
	//__cleanup();
}

void
Body_apply_image_image_restoration__post::__init()
{
	//image = std::string();
}

void
Body_apply_image_image_restoration__post::__cleanup()
{
	//if(image != NULL) {
	//
	//delete image;
	//image = NULL;
	//}
	//
}

void
Body_apply_image_image_restoration__post::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *imageKey = "image";
	node = json_object_get_member(pJsonObject, imageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&image, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&image);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Body_apply_image_image_restoration__post::Body_apply_image_image_restoration__post(char* json)
{
	this->fromJson(json);
}

char*
Body_apply_image_image_restoration__post::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getImage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getImage());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *imageKey = "image";
	json_object_set_member(pJsonObject, imageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Body_apply_image_image_restoration__post::getImage()
{
	return image;
}

void
Body_apply_image_image_restoration__post::setImage(std::string  image)
{
	this->image = image;
}


