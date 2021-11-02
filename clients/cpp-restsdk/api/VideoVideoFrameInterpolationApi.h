/**
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 4.0.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * VideoVideoFrameInterpolationApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_VideoVideoFrameInterpolationApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_VideoVideoFrameInterpolationApi_H_


#include "../ApiClient.h"

#include "HTTPValidationError.h"
#include "HttpContent.h"
#include "Object.h"
#include <cpprest/details/basic_types.h>


#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  VideoVideoFrameInterpolationApi 
{
public:

    explicit VideoVideoFrameInterpolationApi( std::shared_ptr<ApiClient> apiClient );

    virtual ~VideoVideoFrameInterpolationApi();

    /// <summary>
    /// Apply model for the frame-interpolation task for a given models
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="video"></param>
    /// <param name="model"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::shared_ptr<Object>> applyVideoVideoFrameInterpolationPost(
        std::shared_ptr<HttpContent> video,
        boost::optional<utility::string_t> model
    );
    /// <summary>
    /// Get list of models available for frame-interpolation
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    pplx::task<std::shared_ptr<Object>> getVersionsVideoVideoFrameInterpolationGet(
    );

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_VideoVideoFrameInterpolationApi_H_ */

