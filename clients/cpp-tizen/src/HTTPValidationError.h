/*
 * HTTPValidationError.h
 *
 * 
 */

#ifndef _HTTPValidationError_H_
#define _HTTPValidationError_H_


#include <string>
#include "ValidationError.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class HTTPValidationError : public Object {
public:
	/*! \brief Constructor.
	 */
	HTTPValidationError();
	HTTPValidationError(char* str);

	/*! \brief Destructor.
	 */
	virtual ~HTTPValidationError();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ValidationError> getDetail();

	/*! \brief Set 
	 */
	void setDetail(std::list <ValidationError> detail);

private:
	std::list <ValidationError>detail;
	void __init();
	void __cleanup();

};
}
}

#endif /* _HTTPValidationError_H_ */
