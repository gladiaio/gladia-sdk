#ifndef _TextTextNextSentencePredictionManager_H_
#define _TextTextNextSentencePredictionManager_H_

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
/** \addtogroup TextTextNextSentencePrediction TextTextNextSentencePrediction
 * \ingroup Operations
 *  @{
 */
class TextTextNextSentencePredictionManager {
public:
	TextTextNextSentencePredictionManager();
	virtual ~TextTextNextSentencePredictionManager();

/*! \brief Apply model for the next-sentence-prediction task for a given models. *Synchronous*
 *
 * 
 * \param sentence1 
 * \param sentence2 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextNextSentencePredictionPostSync(char * accessToken,
	std::string sentence1, std::string sentence2, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the next-sentence-prediction task for a given models. *Asynchronous*
 *
 * 
 * \param sentence1 
 * \param sentence2 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextNextSentencePredictionPostAsync(char * accessToken,
	std::string sentence1, std::string sentence2, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for next-sentence-prediction. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextNextSentencePredictionGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for next-sentence-prediction. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextNextSentencePredictionGetAsync(char * accessToken,
	
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
#endif /* TextTextNextSentencePredictionManager_H_ */
