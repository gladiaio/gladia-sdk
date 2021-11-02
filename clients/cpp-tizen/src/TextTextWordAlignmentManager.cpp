#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "TextTextWordAlignmentManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


TextTextWordAlignmentManager::TextTextWordAlignmentManager()
{

}

TextTextWordAlignmentManager::~TextTextWordAlignmentManager()
{

}

static gboolean __TextTextWordAlignmentManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __TextTextWordAlignmentManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__TextTextWordAlignmentManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool applyTextTextWordAlignmentPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool applyTextTextWordAlignmentPostHelper(char * accessToken,
	std::string inputStringLanguage1, std::string inputStringLanguage2, std::string model, 
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
	

	itemAtq = stringify(&inputStringLanguage1, "std::string");
	queryParams.insert(pair<string, string>("input_string_language_1", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("input_string_language_1");
	}


	itemAtq = stringify(&inputStringLanguage2, "std::string");
	queryParams.insert(pair<string, string>("input_string_language_2", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("input_string_language_2");
	}


	itemAtq = stringify(&model, "std::string");
	queryParams.insert(pair<string, string>("model", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("model");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/text/text/word-alignment/");
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
		NetClient::easycurl(TextTextWordAlignmentManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = applyTextTextWordAlignmentPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (TextTextWordAlignmentManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), applyTextTextWordAlignmentPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __TextTextWordAlignmentManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool TextTextWordAlignmentManager::applyTextTextWordAlignmentPostAsync(char * accessToken,
	std::string inputStringLanguage1, std::string inputStringLanguage2, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return applyTextTextWordAlignmentPostHelper(accessToken,
	inputStringLanguage1, inputStringLanguage2, model, 
	handler, userData, true);
}

bool TextTextWordAlignmentManager::applyTextTextWordAlignmentPostSync(char * accessToken,
	std::string inputStringLanguage1, std::string inputStringLanguage2, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return applyTextTextWordAlignmentPostHelper(accessToken,
	inputStringLanguage1, inputStringLanguage2, model, 
	handler, userData, false);
}

static bool getVersionsTextTextWordAlignmentGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool getVersionsTextTextWordAlignmentGetHelper(char * accessToken,
	
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

	string url("/text/text/word-alignment/");
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
		NetClient::easycurl(TextTextWordAlignmentManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getVersionsTextTextWordAlignmentGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (TextTextWordAlignmentManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getVersionsTextTextWordAlignmentGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __TextTextWordAlignmentManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool TextTextWordAlignmentManager::getVersionsTextTextWordAlignmentGetAsync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getVersionsTextTextWordAlignmentGetHelper(accessToken,
	
	handler, userData, true);
}

bool TextTextWordAlignmentManager::getVersionsTextTextWordAlignmentGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getVersionsTextTextWordAlignmentGetHelper(accessToken,
	
	handler, userData, false);
}

