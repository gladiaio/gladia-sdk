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

#ifndef OAI_OAIImageImageRestorationApi_H
#define OAI_OAIImageImageRestorationApi_H

#include "OAIHttpRequest.h"

#include "OAIHTTPValidationError.h"
#include "OAIHttpRequest.h"
#include "OAIObject.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAIImageImageRestorationApi: public QObject {
    Q_OBJECT

public:
    OAIImageImageRestorationApi();
    OAIImageImageRestorationApi(QString host, QString basePath);
    ~OAIImageImageRestorationApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void applyImageImageRestorationPost(const OAIHttpRequestInputFileElement*& image, const QString& model);
    void getVersionsImageImageRestorationGet();
    
private:
    void applyImageImageRestorationPostCallback (OAIHttpRequestWorker * worker);
    void getVersionsImageImageRestorationGetCallback (OAIHttpRequestWorker * worker);
    
signals:
    void applyImageImageRestorationPostSignal(OAIObject summary);
    void getVersionsImageImageRestorationGetSignal(OAIObject summary);
    
    void applyImageImageRestorationPostSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void getVersionsImageImageRestorationGetSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    
    void applyImageImageRestorationPostSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsImageImageRestorationGetSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void applyImageImageRestorationPostSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsImageImageRestorationGetSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif
