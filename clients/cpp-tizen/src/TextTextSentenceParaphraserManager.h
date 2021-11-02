#ifndef _TextTextSentenceParaphraserManager_H_
#define _TextTextSentenceParaphraserManager_H_

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
/** \addtogroup TextTextSentenceParaphraser TextTextSentenceParaphraser
 * \ingroup Operations
 *  @{
 */
class TextTextSentenceParaphraserManager {
public:
	TextTextSentenceParaphraserManager();
	virtual ~TextTextSentenceParaphraserManager();

/*! \brief Apply model for the sentence-paraphraser task for a given models. *Synchronous*
 *
 * 
 * \param context 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextSentenceParaphraserPostSync(char * accessToken,
	std::string context, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the sentence-paraphraser task for a given models. *Asynchronous*
 *
 * 
 * \param context 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextSentenceParaphraserPostAsync(char * accessToken,
	std::string context, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for sentence-paraphraser. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextSentenceParaphraserGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for sentence-paraphraser. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextSentenceParaphraserGetAsync(char * accessToken,
	
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
#endif /* TextTextSentenceParaphraserManager_H_ */
