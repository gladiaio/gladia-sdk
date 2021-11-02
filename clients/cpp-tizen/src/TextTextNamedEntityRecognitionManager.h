#ifndef _TextTextNamedEntityRecognitionManager_H_
#define _TextTextNamedEntityRecognitionManager_H_

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
/** \addtogroup TextTextNamedEntityRecognition TextTextNamedEntityRecognition
 * \ingroup Operations
 *  @{
 */
class TextTextNamedEntityRecognitionManager {
public:
	TextTextNamedEntityRecognitionManager();
	virtual ~TextTextNamedEntityRecognitionManager();

/*! \brief Apply model for the named-entity-recognition task for a given models. *Synchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextNamedEntityRecognitionPostSync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the named-entity-recognition task for a given models. *Asynchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextNamedEntityRecognitionPostAsync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for named-entity-recognition. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextNamedEntityRecognitionGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for named-entity-recognition. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextNamedEntityRecognitionGetAsync(char * accessToken,
	
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
#endif /* TextTextNamedEntityRecognitionManager_H_ */
