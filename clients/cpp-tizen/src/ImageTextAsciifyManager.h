#ifndef _ImageTextAsciifyManager_H_
#define _ImageTextAsciifyManager_H_

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
/** \addtogroup ImageTextAsciify ImageTextAsciify
 * \ingroup Operations
 *  @{
 */
class ImageTextAsciifyManager {
public:
	ImageTextAsciifyManager();
	virtual ~ImageTextAsciifyManager();

/*! \brief Apply model for the asciify task for a given models. *Synchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageTextAsciifyPostSync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the asciify task for a given models. *Asynchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageTextAsciifyPostAsync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for asciify. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageTextAsciifyGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for asciify. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageTextAsciifyGetAsync(char * accessToken,
	
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
#endif /* ImageTextAsciifyManager_H_ */
