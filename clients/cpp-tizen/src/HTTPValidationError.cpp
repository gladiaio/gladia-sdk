#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "HTTPValidationError.h"

using namespace std;
using namespace Tizen::ArtikCloud;

HTTPValidationError::HTTPValidationError()
{
	//__init();
}

HTTPValidationError::~HTTPValidationError()
{
	//__cleanup();
}

void
HTTPValidationError::__init()
{
	//new std::list()std::list> detail;
}

void
HTTPValidationError::__cleanup()
{
	//if(detail != NULL) {
	//detail.RemoveAll(true);
	//delete detail;
	//detail = NULL;
	//}
	//
}

void
HTTPValidationError::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *detailKey = "detail";
	node = json_object_get_member(pJsonObject, detailKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ValidationError> new_list;
			ValidationError inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ValidationError")) {
					jsonToValue(&inst, temp_json, "ValidationError", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			detail = new_list;
		}
		
	}
}

HTTPValidationError::HTTPValidationError(char* json)
{
	this->fromJson(json);
}

char*
HTTPValidationError::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ValidationError")) {
		list<ValidationError> new_list = static_cast<list <ValidationError> > (getDetail());
		node = converttoJson(&new_list, "ValidationError", "array");
	} else {
		node = json_node_alloc();
		list<ValidationError> new_list = static_cast<list <ValidationError> > (getDetail());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ValidationError>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ValidationError obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *detailKey = "detail";
	json_object_set_member(pJsonObject, detailKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ValidationError>
HTTPValidationError::getDetail()
{
	return detail;
}

void
HTTPValidationError::setDetail(std::list <ValidationError> detail)
{
	this->detail = detail;
}


