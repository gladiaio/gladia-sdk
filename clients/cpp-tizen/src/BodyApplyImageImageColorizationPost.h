/*
 * Body_apply_image_image_colorization__post.h
 *
 * 
 */

#ifndef _Body_apply_image_image_colorization__post_H_
#define _Body_apply_image_image_colorization__post_H_


#include <string>
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

class Body_apply_image_image_colorization__post : public Object {
public:
	/*! \brief Constructor.
	 */
	Body_apply_image_image_colorization__post();
	Body_apply_image_image_colorization__post(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Body_apply_image_image_colorization__post();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getImage();

	/*! \brief Set 
	 */
	void setImage(std::string  image);

private:
	std::string image;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Body_apply_image_image_colorization__post_H_ */
