#ifndef _TextTextSummarizationManager_H_
#define _TextTextSummarizationManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "HTTPValidationError.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup TextTextSummarization TextTextSummarization
 * \ingroup Operations
 *  @{
 */
class TextTextSummarizationManager {
public:
	TextTextSummarizationManager();
	virtual ~TextTextSummarizationManager();

/*! \brief Apply model for the summarization task for a given models. *Synchronous*
 *
 * 
 * \param text 
 * \param sourceLanguage 
 * \param maxLength 
 * \param minLength 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextSummarizationPostSync(char * accessToken,
	std::string text, std::string sourceLanguage, int maxLength, int minLength, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the summarization task for a given models. *Asynchronous*
 *
 * 
 * \param text 
 * \param sourceLanguage 
 * \param maxLength 
 * \param minLength 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextSummarizationPostAsync(char * accessToken,
	std::string text, std::string sourceLanguage, int maxLength, int minLength, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for summarization. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextSummarizationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for summarization. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextSummarizationGetAsync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "http://localhost";
	}
};
/** @}*/

}
}
#endif /* TextTextSummarizationManager_H_ */
