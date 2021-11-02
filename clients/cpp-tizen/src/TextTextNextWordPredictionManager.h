#ifndef _TextTextNextWordPredictionManager_H_
#define _TextTextNextWordPredictionManager_H_

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
/** \addtogroup TextTextNextWordPrediction TextTextNextWordPrediction
 * \ingroup Operations
 *  @{
 */
class TextTextNextWordPredictionManager {
public:
	TextTextNextWordPredictionManager();
	virtual ~TextTextNextWordPredictionManager();

/*! \brief Apply model for the next-word-prediction task for a given models. *Synchronous*
 *
 * 
 * \param sentence 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextNextWordPredictionPostSync(char * accessToken,
	std::string sentence, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the next-word-prediction task for a given models. *Asynchronous*
 *
 * 
 * \param sentence 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextNextWordPredictionPostAsync(char * accessToken,
	std::string sentence, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for next-word-prediction. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextNextWordPredictionGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for next-word-prediction. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextNextWordPredictionGetAsync(char * accessToken,
	
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
#endif /* TextTextNextWordPredictionManager_H_ */
