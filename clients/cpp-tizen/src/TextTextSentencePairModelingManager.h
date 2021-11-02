#ifndef _TextTextSentencePairModelingManager_H_
#define _TextTextSentencePairModelingManager_H_

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
/** \addtogroup TextTextSentencePairModeling TextTextSentencePairModeling
 * \ingroup Operations
 *  @{
 */
class TextTextSentencePairModelingManager {
public:
	TextTextSentencePairModelingManager();
	virtual ~TextTextSentencePairModelingManager();

/*! \brief Apply model for the sentence-pair-modeling task for a given models. *Synchronous*
 *
 * 
 * \param sentence 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextSentencePairModelingPostSync(char * accessToken,
	std::string sentence, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Apply model for the sentence-pair-modeling task for a given models. *Asynchronous*
 *
 * 
 * \param sentence 
 * \param model 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool applyTextTextSentencePairModelingPostAsync(char * accessToken,
	std::string sentence, std::string model, 
	void(* handler)(std::string, Error, void* )
	, void* userData);


/*! \brief Get list of models available for sentence-pair-modeling. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextSentencePairModelingGetSync(char * accessToken,
	
	void(* handler)(std::string, Error, void* )
	, void* userData);

/*! \brief Get list of models available for sentence-pair-modeling. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool getVersionsTextTextSentencePairModelingGetAsync(char * accessToken,
	
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
#endif /* TextTextSentencePairModelingManager_H_ */
