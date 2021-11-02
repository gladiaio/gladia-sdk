#ifndef _TextTextWordAlignmentManager_H_
#define _TextTextWordAlignmentManager_H_

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
/** \addtogroup TextTextWordAlignment TextTextWordAlignment
 * \ingroup Operations
 *  @{
 */
class TextTextWordAlignmentManager {
public:
	TextTextWordAlignmentManager();
	virtual ~TextTextWordAlignmentManager();

/*! \brief Apply model for the word-alignment task for a given models. *Synchronous*
 *
 * 
 * \param inputStringLanguage1 
 * \param inputStringLanguage2 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextWordAlignmentPostSync(char * accessToken,
	std::string inputStringLanguage1, std::string inputStringLanguage2, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the word-alignment task for a given models. *Asynchronous*
 *
 * 
 * \param inputStringLanguage1 
 * \param inputStringLanguage2 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextWordAlignmentPostAsync(char * accessToken,
	std::string inputStringLanguage1, std::string inputStringLanguage2, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for word-alignment. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextWordAlignmentGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for word-alignment. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextWordAlignmentGetAsync(char * accessToken,
	
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
#endif /* TextTextWordAlignmentManager_H_ */
