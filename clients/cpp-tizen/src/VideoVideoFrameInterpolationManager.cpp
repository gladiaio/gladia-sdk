#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "VideoVideoFrameInterpolationManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


VideoVideoFrameInterpolationManager::VideoVideoFrameInterpolationManager()
{

}

VideoVideoFrameInterpolationManager::~VideoVideoFrameInterpolationManager()
{

}

static gboolean __VideoVideoFrameInterpolationManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __VideoVideoFrameInterpolationManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__VideoVideoFrameInterpolationManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool applyVideoVideoFrameInterpolationPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool applyVideoVideoFrameInterpolationPostHelper(char * accessToken,
	std::string video, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: multipart/form-data");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&model, "std::string");
	queryParams.insert(pair<string, string>("model", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("model");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/video/video/frame-interpolation/");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(VideoVideoFrameInterpolationManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = applyVideoVideoFrameInterpolationPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (VideoVideoFrameInterpolationManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), applyVideoVideoFrameInterpolationPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __VideoVideoFrameInterpolationManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool VideoVideoFrameInterpolationManager::applyVideoVideoFrameInterpolationPostAsync(char * accessToken,
	std::string video, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return applyVideoVideoFrameInterpolationPostHelper(accessToken,
	video, model, 
	handler, userData, true);
}

bool VideoVideoFrameInterpolationManager::applyVideoVideoFrameInterpolationPostSync(char * accessToken,
	std::string video, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return applyVideoVideoFrameInterpolationPostHelper(accessToken,
	video, model, 
	handler, userData, false);
}

static bool getVersionsVideoVideoFrameInterpolationGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getVersionsVideoVideoFrameInterpolationGetHelper(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/video/video/frame-interpolation/");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(VideoVideoFrameInterpolationManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getVersionsVideoVideoFrameInterpolationGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (VideoVideoFrameInterpolationManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getVersionsVideoVideoFrameInterpolationGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __VideoVideoFrameInterpolationManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool VideoVideoFrameInterpolationManager::getVersionsVideoVideoFrameInterpolationGetAsync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getVersionsVideoVideoFrameInterpolationGetHelper(accessToken,
	
	handler, userData, true);
}

bool VideoVideoFrameInterpolationManager::getVersionsVideoVideoFrameInterpolationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getVersionsVideoVideoFrameInterpolationGetHelper(accessToken,
	
	handler, userData, false);
}

