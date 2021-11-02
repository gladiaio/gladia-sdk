#ifndef _VideoVideoFrameInterpolationManager_H_
#define _VideoVideoFrameInterpolationManager_H_

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
/** \addtogroup VideoVideoFrameInterpolation VideoVideoFrameInterpolation
 * \ingroup Operations
 *  @{
 */
class VideoVideoFrameInterpolationManager {
public:
	VideoVideoFrameInterpolationManager();
	virtual ~VideoVideoFrameInterpolationManager();

/*! \brief Apply model for the frame-interpolation task for a given models. *Synchronous*
 *
 * 
 * \param video  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyVideoVideoFrameInterpolationPostSync(char * accessToken,
	std::string video, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the frame-interpolation task for a given models. *Asynchronous*
 *
 * 
 * \param video  *Required*
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyVideoVideoFrameInterpolationPostAsync(char * accessToken,
	std::string video, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for frame-interpolation. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsVideoVideoFrameInterpolationGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for frame-interpolation. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsVideoVideoFrameInterpolationGetAsync(char * accessToken,
	
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
#endif /* VideoVideoFrameInterpolationManager_H_ */
