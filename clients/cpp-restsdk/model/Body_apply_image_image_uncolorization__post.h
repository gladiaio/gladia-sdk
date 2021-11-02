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
 * Body_apply_image_image_uncolorization__post.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Body_apply_image_image_uncolorization__post_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Body_apply_image_image_uncolorization__post_H_


#include "../ModelBase.h"

#include "HttpContent.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  Body_apply_image_image_uncolorization__post
    : public ModelBase
{
public:
    Body_apply_image_image_uncolorization__post();
    virtual ~Body_apply_image_image_uncolorization__post();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Body_apply_image_image_uncolorization__post members

    /// <summary>
    /// 
    /// </summary>
    HttpContent getImage() const;
    
    void setImage(const HttpContent& value);


protected:
    HttpContent m_Image;
    };


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Body_apply_image_image_uncolorization__post_H_ */
