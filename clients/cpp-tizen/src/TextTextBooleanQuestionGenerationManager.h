#ifndef _TextTextBooleanQuestionGenerationManager_H_
#define _TextTextBooleanQuestionGenerationManager_H_

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
/** \addtogroup TextTextBooleanQuestionGeneration TextTextBooleanQuestionGeneration
 * \ingroup Operations
 *  @{
 */
class TextTextBooleanQuestionGenerationManager {
public:
	TextTextBooleanQuestionGenerationManager();
	virtual ~TextTextBooleanQuestionGenerationManager();

/*! \brief Apply model for the boolean-question-generation task for a given models. *Synchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextBooleanQuestionGenerationPostSync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the boolean-question-generation task for a given models. *Asynchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextBooleanQuestionGenerationPostAsync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for boolean-question-generation. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextBooleanQuestionGenerationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for boolean-question-generation. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextBooleanQuestionGenerationGetAsync(char * accessToken,
	
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
#endif /* TextTextBooleanQuestionGenerationManager_H_ */
