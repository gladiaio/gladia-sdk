/*
 * ValidationError.h
 *
 * 
 */

#ifndef _ValidationError_H_
#define _ValidationError_H_


#include <string>
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

class ValidationError : public Object {
public:
	/*! \brief Constructor.
	 */
	ValidationError();
	ValidationError(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ValidationError();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<std::string> getLoc();

	/*! \brief Set 
	 */
	void setLoc(std::list <std::string> loc);
	/*! \brief Get 
	 */
	std::string getMsg();

	/*! \brief Set 
	 */
	void setMsg(std::string  msg);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);

private:
	std::list <std::string>loc;
	std::string msg;
	std::string type;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ValidationError_H_ */
