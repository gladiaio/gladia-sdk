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

#ifndef OAI_OAIImageTextOcrApi_H
#define OAI_OAIImageTextOcrApi_H

#include "OAIHttpRequest.h"

#include "OAIHTTPValidationError.h"
#include "OAIHttpRequest.h"
#include "OAIObject.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAIImageTextOcrApi: public QObject {
    Q_OBJECT

public:
    OAIImageTextOcrApi();
    OAIImageTextOcrApi(QString host, QString basePath);
    ~OAIImageTextOcrApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void applyImageTextOcrPost(const OAIHttpRequestInputFileElement*& image, const QString& source_language, const QString& model);
    void getVersionsImageTextOcrGet();
    
private:
    void applyImageTextOcrPostCallback (OAIHttpRequestWorker * worker);
    void getVersionsImageTextOcrGetCallback (OAIHttpRequestWorker * worker);
    
signals:
    void applyImageTextOcrPostSignal(OAIObject summary);
    void getVersionsImageTextOcrGetSignal(OAIObject summary);
    
    void applyImageTextOcrPostSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void getVersionsImageTextOcrGetSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    
    void applyImageTextOcrPostSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsImageTextOcrGetSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void applyImageTextOcrPostSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsImageTextOcrGetSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif
