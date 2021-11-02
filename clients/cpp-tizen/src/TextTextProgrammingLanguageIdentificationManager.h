#ifndef _TextTextProgrammingLanguageIdentificationManager_H_
#define _TextTextProgrammingLanguageIdentificationManager_H_

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
/** \addtogroup TextTextProgrammingLanguageIdentification TextTextProgrammingLanguageIdentification
 * \ingroup Operations
 *  @{
 */
class TextTextProgrammingLanguageIdentificationManager {
public:
	TextTextProgrammingLanguageIdentificationManager();
	virtual ~TextTextProgrammingLanguageIdentificationManager();

/*! \brief Apply model for the programming-language-identification task for a given models. *Synchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextProgrammingLanguageIdentificationPostSync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the programming-language-identification task for a given models. *Asynchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextProgrammingLanguageIdentificationPostAsync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for programming-language-identification. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextProgrammingLanguageIdentificationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for programming-language-identification. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextProgrammingLanguageIdentificationGetAsync(char * accessToken,
	
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
#endif /* TextTextProgrammingLanguageIdentificationManager_H_ */
