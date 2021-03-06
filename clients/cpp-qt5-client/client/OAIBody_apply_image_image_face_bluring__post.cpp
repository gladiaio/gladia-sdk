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


#include "OAIBody_apply_image_image_face_bluring__post.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIBody_apply_image_image_face_bluring__post::OAIBody_apply_image_image_face_bluring__post(QString json) {
    this->init();
    this->fromJson(json);
}

OAIBody_apply_image_image_face_bluring__post::OAIBody_apply_image_image_face_bluring__post() {
    this->init();
}

OAIBody_apply_image_image_face_bluring__post::~OAIBody_apply_image_image_face_bluring__post() {

}

void
OAIBody_apply_image_image_face_bluring__post::init() {
    
    m_image_isSet = false;
    m_image_isValid = false;
    }

void
OAIBody_apply_image_image_face_bluring__post::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIBody_apply_image_image_face_bluring__post::fromJsonObject(QJsonObject json) {
    
    m_image_isValid = ::OpenAPI::fromJsonValue(image, json[QString("image")]);
    
    
}

QString
OAIBody_apply_image_image_face_bluring__post::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIBody_apply_image_image_face_bluring__post::asJsonObject() const {
    QJsonObject obj;
	if(image.isSet()){
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(image));
    }
    return obj;
}


OAIHttpRequestInputFileElement*
OAIBody_apply_image_image_face_bluring__post::getImage() const {
    return image;
}
void
OAIBody_apply_image_image_face_bluring__post::setImage(const OAIHttpRequestInputFileElement* &image) {
    this->image = image;
    this->m_image_isSet = true;
}

bool
OAIBody_apply_image_image_face_bluring__post::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(image.isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

bool
OAIBody_apply_image_image_face_bluring__post::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_image_isValid && true;
}

}

