#ifndef _ImageTextOcrManager_H_
#define _ImageTextOcrManager_H_

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
/** \addtogroup ImageTextOcr ImageTextOcr
 * \ingroup Operations
 *  @{
 */
class ImageTextOcrManager {
public:
	ImageTextOcrManager();
	virtual ~ImageTextOcrManager();

/*! \brief Apply model for the ocr task for a given models. *Synchronous*
 *
 * 
 * \param image  *Required*
 * \param sourceLanguage 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageTextOcrPostSync(char * accessToken,
	std::string image, std::string sourceLanguage, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the ocr task for a given models. *Asynchronous*
 *
 * 
 * \param image  *Required*
 * \param sourceLanguage 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyImageTextOcrPostAsync(char * accessToken,
	std::string image, std::string sourceLanguage, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for ocr. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageTextOcrGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for ocr. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsImageTextOcrGetAsync(char * accessToken,
	
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
#endif /* ImageTextOcrManager_H_ */
