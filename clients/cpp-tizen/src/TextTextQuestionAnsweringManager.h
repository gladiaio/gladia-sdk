#ifndef _TextTextQuestionAnsweringManager_H_
#define _TextTextQuestionAnsweringManager_H_

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
/** \addtogroup TextTextQuestionAnswering TextTextQuestionAnswering
 * \ingroup Operations
 *  @{
 */
class TextTextQuestionAnsweringManager {
public:
	TextTextQuestionAnsweringManager();
	virtual ~TextTextQuestionAnsweringManager();

/*! \brief Apply model for the question-answering task for a given models. *Synchronous*
 *
 * 
 * \param context 
 * \param question 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextQuestionAnsweringPostSync(char * accessToken,
	std::string context, std::string question, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the question-answering task for a given models. *Asynchronous*
 *
 * 
 * \param context 
 * \param question 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextQuestionAnsweringPostAsync(char * accessToken,
	std::string context, std::string question, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for question-answering. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextQuestionAnsweringGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for question-answering. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextQuestionAnsweringGetAsync(char * accessToken,
	
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
#endif /* TextTextQuestionAnsweringManager_H_ */
