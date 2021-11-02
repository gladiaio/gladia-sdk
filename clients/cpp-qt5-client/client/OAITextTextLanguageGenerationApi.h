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

#ifndef OAI_OAITextTextLanguageGenerationApi_H
#define OAI_OAITextTextLanguageGenerationApi_H

#include "OAIHttpRequest.h"

#include "OAIHTTPValidationError.h"
#include "OAIObject.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAITextTextLanguageGenerationApi: public QObject {
    Q_OBJECT

public:
    OAITextTextLanguageGenerationApi();
    OAITextTextLanguageGenerationApi(QString host, QString basePath);
    ~OAITextTextLanguageGenerationApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void applyTextTextLanguageGenerationPost(const QString& text, const QString& model);
    void getVersionsTextTextLanguageGenerationGet();
    
private:
    void applyTextTextLanguageGenerationPostCallback (OAIHttpRequestWorker * worker);
    void getVersionsTextTextLanguageGenerationGetCallback (OAIHttpRequestWorker * worker);
    
signals:
    void applyTextTextLanguageGenerationPostSignal(OAIObject summary);
    void getVersionsTextTextLanguageGenerationGetSignal(OAIObject summary);
    
    void applyTextTextLanguageGenerationPostSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void getVersionsTextTextLanguageGenerationGetSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    
    void applyTextTextLanguageGenerationPostSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsTextTextLanguageGenerationGetSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void applyTextTextLanguageGenerationPostSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsTextTextLanguageGenerationGetSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif
