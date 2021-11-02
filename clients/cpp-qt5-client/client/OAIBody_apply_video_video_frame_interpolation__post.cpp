/**
 * FastAPI
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.1.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include "OAIBody_apply_video_video_frame_interpolation__post.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIBody_apply_video_video_frame_interpolation__post::OAIBody_apply_video_video_frame_interpolation__post(QString json) {
    this->init();
    this->fromJson(json);
}

OAIBody_apply_video_video_frame_interpolation__post::OAIBody_apply_video_video_frame_interpolation__post() {
    this->init();
}

OAIBody_apply_video_video_frame_interpolation__post::~OAIBody_apply_video_video_frame_interpolation__post() {

}

void
OAIBody_apply_video_video_frame_interpolation__post::init() {
    
    m_video_isSet = false;
    m_video_isValid = false;
    }

void
OAIBody_apply_video_video_frame_interpolation__post::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIBody_apply_video_video_frame_interpolation__post::fromJsonObject(QJsonObject json) {
    
    m_video_isValid = ::OpenAPI::fromJsonValue(video, json[QString("video")]);
    
    
}

QString
OAIBody_apply_video_video_frame_interpolation__post::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIBody_apply_video_video_frame_interpolation__post::asJsonObject() const {
    QJsonObject obj;
	if(video.isSet()){
        obj.insert(QString("video"), ::OpenAPI::toJsonValue(video));
    }
    return obj;
}


OAIHttpRequestInputFileElement*
OAIBody_apply_video_video_frame_interpolation__post::getVideo() const {
    return video;
}
void
OAIBody_apply_video_video_frame_interpolation__post::setVideo(const OAIHttpRequestInputFileElement* &video) {
    this->video = video;
    this->m_video_isSet = true;
}

bool
OAIBody_apply_video_video_frame_interpolation__post::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(video.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIBody_apply_video_video_frame_interpolation__post::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_video_isValid && true;
}

}

