/*
 * Body_apply_video_video_frame_interpolation__post.h
 *
 * 
 */

#ifndef _Body_apply_video_video_frame_interpolation__post_H_
#define _Body_apply_video_video_frame_interpolation__post_H_


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

class Body_apply_video_video_frame_interpolation__post : public Object {
public:
	/*! \brief Constructor.
	 */
	Body_apply_video_video_frame_interpolation__post();
	Body_apply_video_video_frame_interpolation__post(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Body_apply_video_video_frame_interpolation__post();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getVideo();

	/*! \brief Set 
	 */
	void setVideo(std::string  video);

private:
	std::string video;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Body_apply_video_video_frame_interpolation__post_H_ */
