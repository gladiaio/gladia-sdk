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

#ifndef OAI_OAIImageTextAsciifyApi_H
#define OAI_OAIImageTextAsciifyApi_H

#include "OAIHttpRequest.h"

#include "OAIHTTPValidationError.h"
#include "OAIHttpRequest.h"
#include "OAIObject.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAIImageTextAsciifyApi: public QObject {
    Q_OBJECT

public:
    OAIImageTextAsciifyApi();
    OAIImageTextAsciifyApi(QString host, QString basePath);
    ~OAIImageTextAsciifyApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void applyImageTextAsciifyPost(const OAIHttpRequestInputFileElement*& image, const QString& model);
    void getVersionsImageTextAsciifyGet();
    
private:
    void applyImageTextAsciifyPostCallback (OAIHttpRequestWorker * worker);
    void getVersionsImageTextAsciifyGetCallback (OAIHttpRequestWorker * worker);
    
signals:
    void applyImageTextAsciifyPostSignal(OAIObject summary);
    void getVersionsImageTextAsciifyGetSignal(OAIObject summary);
    
    void applyImageTextAsciifyPostSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void getVersionsImageTextAsciifyGetSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    
    void applyImageTextAsciifyPostSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsImageTextAsciifyGetSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void applyImageTextAsciifyPostSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsImageTextAsciifyGetSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif
