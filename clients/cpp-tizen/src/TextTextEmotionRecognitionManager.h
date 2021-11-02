#ifndef _TextTextEmotionRecognitionManager_H_
#define _TextTextEmotionRecognitionManager_H_

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
/** \addtogroup TextTextEmotionRecognition TextTextEmotionRecognition
 * \ingroup Operations
 *  @{
 */
class TextTextEmotionRecognitionManager {
public:
	TextTextEmotionRecognitionManager();
	virtual ~TextTextEmotionRecognitionManager();

/*! \brief Apply model for the emotion-recognition task for a given models. *Synchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextEmotionRecognitionPostSync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the emotion-recognition task for a given models. *Asynchronous*
 *
 * 
 * \param text 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextEmotionRecognitionPostAsync(char * accessToken,
	std::string text, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for emotion-recognition. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextEmotionRecognitionGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for emotion-recognition. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextEmotionRecognitionGetAsync(char * accessToken,
	
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
#endif /* TextTextEmotionRecognitionManager_H_ */
