#ifndef _TextTextProgrammingLanguageGenerationManager_H_
#define _TextTextProgrammingLanguageGenerationManager_H_

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
/** \addtogroup TextTextProgrammingLanguageGeneration TextTextProgrammingLanguageGeneration
 * \ingroup Operations
 *  @{
 */
class TextTextProgrammingLanguageGenerationManager {
public:
	TextTextProgrammingLanguageGenerationManager();
	virtual ~TextTextProgrammingLanguageGenerationManager();

/*! \brief Apply model for the programming-language-generation task for a given models. *Synchronous*
 *
 * 
 * \param codeSnippet 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextProgrammingLanguageGenerationPostSync(char * accessToken,
	std::string codeSnippet, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the programming-language-generation task for a given models. *Asynchronous*
 *
 * 
 * \param codeSnippet 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextProgrammingLanguageGenerationPostAsync(char * accessToken,
	std::string codeSnippet, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for programming-language-generation. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextProgrammingLanguageGenerationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for programming-language-generation. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextProgrammingLanguageGenerationGetAsync(char * accessToken,
	
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
#endif /* TextTextProgrammingLanguageGenerationManager_H_ */
