#ifndef _ImageImageBackgroundRemovalManager_H_
#define _ImageImageBackgroundRemovalManager_H_

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
/** \addtogroup ImageImageBackgroundRemoval ImageImageBackgroundRemoval
 * \ingroup Operations
 *  @{
 */
class ImageImageBackgroundRemovalManager {
public:
	ImageImageBackgroundRemovalManager();
	virtual ~ImageImageBackgroundRemovalManager();

/*! \brief Apply model for the background-removal task for a given models. *Synchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageImageBackgroundRemovalPostSync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the background-removal task for a given models. *Asynchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageImageBackgroundRemovalPostAsync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for background-removal. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageImageBackgroundRemovalGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for background-removal. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageImageBackgroundRemovalGetAsync(char * accessToken,
	
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
#endif /* ImageImageBackgroundRemovalManager_H_ */
