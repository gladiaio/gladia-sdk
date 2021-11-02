#ifndef _TextTextDependencyTrackingManager_H_
#define _TextTextDependencyTrackingManager_H_

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
/** \addtogroup TextTextDependencyTracking TextTextDependencyTracking
 * \ingroup Operations
 *  @{
 */
class TextTextDependencyTrackingManager {
public:
	TextTextDependencyTrackingManager();
	virtual ~TextTextDependencyTrackingManager();

/*! \brief Apply model for the dependency-tracking task for a given models. *Synchronous*
 *
 * 
 * \param inputString 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextDependencyTrackingPostSync(char * accessToken,
	std::string inputString, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the dependency-tracking task for a given models. *Asynchronous*
 *
 * 
 * \param inputString 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextDependencyTrackingPostAsync(char * accessToken,
	std::string inputString, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for dependency-tracking. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextDependencyTrackingGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for dependency-tracking. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextDependencyTrackingGetAsync(char * accessToken,
	
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
#endif /* TextTextDependencyTrackingManager_H_ */
