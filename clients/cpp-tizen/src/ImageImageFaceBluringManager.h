#ifndef _ImageImageFaceBluringManager_H_
#define _ImageImageFaceBluringManager_H_

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
/** \addtogroup ImageImageFaceBluring ImageImageFaceBluring
 * \ingroup Operations
 *  @{
 */
class ImageImageFaceBluringManager {
public:
	ImageImageFaceBluringManager();
	virtual ~ImageImageFaceBluringManager();

/*! \brief Apply model for the face-bluring task for a given models. *Synchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageImageFaceBluringPostSync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the face-bluring task for a given models. *Asynchronous*
 *
 * 
 * \param image  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageImageFaceBluringPostAsync(char * accessToken,
	std::string image, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for face-bluring. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageImageFaceBluringGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for face-bluring. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageImageFaceBluringGetAsync(char * accessToken,
	
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
#endif /* ImageImageFaceBluringManager_H_ */
