#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ValidationError.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ValidationError::ValidationError()
{
	//__init();
}

ValidationError::~ValidationError()
{
	//__cleanup();
}

void
ValidationError::__init()
{
	//new std::list()std::list> loc;
	//msg = std::string();
	//type = std::string();
}

void
ValidationError::__cleanup()
{
	//if(loc != NULL) {
	//loc.RemoveAll(true);
	//delete loc;
	//loc = NULL;
	//}
	//if(msg != NULL) {
	//
	//delete msg;
	//msg = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//
}

void
ValidationError::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *locKey = "loc";
	node = json_object_get_member(pJsonObject, locKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			loc = new_list;
		}
		
	}
	const gchar *msgKey = "msg";
	node = json_object_get_member(pJsonObject, msgKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&msg, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
}

ValidationError::ValidationError(char* json)
{
	this->fromJson(json);
}

char*
ValidationError::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getLoc());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getLoc());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *locKey = "loc";
	json_object_set_member(pJsonObject, locKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMsg();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *msgKey = "msg";
	json_object_set_member(pJsonObject, msgKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<std::string>
ValidationError::getLoc()
{
	return loc;
}

void
ValidationError::setLoc(std::list <std::string> loc)
{
	this->loc = loc;
}

std::string
ValidationError::getMsg()
{
	return msg;
}

void
ValidationError::setMsg(std::string  msg)
{
	this->msg = msg;
}

std::string
ValidationError::getType()
{
	return type;
}

void
ValidationError::setType(std::string  type)
{
	this->type = type;
}


