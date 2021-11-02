#ifndef _ImageImageUncolorizationManager_H_
#define _ImageImageUncolorizationManager_H_

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
/** \addtogroup ImageImageUncolorization ImageImageUncolorization
 * \ingroup Operations
 *  @{
 */
class ImageImageUncolorizationManager {
public:
	ImageImageUncolorizationManager();
	virtual ~ImageImageUncolorizationManager();

/*! \brief Apply model for the uncolorization task for a given models. *Synchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageImageUncolorizationPostSync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the uncolorization task for a given models. *Asynchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageImageUncolorizationPostAsync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for uncolorization. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageImageUncolorizationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for uncolorization. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageImageUncolorizationGetAsync(char * accessToken,
	
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
#endif /* ImageImageUncolorizationManager_H_ */
