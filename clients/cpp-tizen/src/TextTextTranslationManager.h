#ifndef _TextTextTranslationManager_H_
#define _TextTextTranslationManager_H_

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
/** \addtogroup TextTextTranslation TextTextTranslation
 * \ingroup Operations
 *  @{
 */
class TextTextTranslationManager {
public:
	TextTextTranslationManager();
	virtual ~TextTextTranslationManager();

/*! \brief Apply model for the translation task for a given models. *Synchronous*
 *
 * 
 * \param inputString 
 * \param sourceLanguage 
 * \param targetLanguage 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextTranslationPostSync(char * accessToken,
	std::string inputString, std::string sourceLanguage, std::string targetLanguage, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the translation task for a given models. *Asynchronous*
 *
 * 
 * \param inputString 
 * \param sourceLanguage 
 * \param targetLanguage 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextTranslationPostAsync(char * accessToken,
	std::string inputString, std::string sourceLanguage, std::string targetLanguage, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for translation. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextTranslationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for translation. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextTranslationGetAsync(char * accessToken,
	
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
#endif /* TextTextTranslationManager_H_ */
