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

#ifndef OAI_OAITextTextPluralApi_H
#define OAI_OAITextTextPluralApi_H

#include "OAIHttpRequest.h"

#include "OAIHTTPValidationError.h"
#include "OAIObject.h"
#include <QString>

#include <QObject>

namespace OpenAPI {

class OAITextTextPluralApi: public QObject {
    Q_OBJECT

public:
    OAITextTextPluralApi();
    OAITextTextPluralApi(QString host, QString basePath);
    ~OAITextTextPluralApi();

    QString host;
    QString basePath;
    QMap<QString, QString> defaultHeaders;

    void applyTextTextPluralPost(const QString& word, const qint32& count, const QString& model);
    void getVersionsTextTextPluralGet();
    
private:
    void applyTextTextPluralPostCallback (OAIHttpRequestWorker * worker);
    void getVersionsTextTextPluralGetCallback (OAIHttpRequestWorker * worker);
    
signals:
    void applyTextTextPluralPostSignal(OAIObject summary);
    void getVersionsTextTextPluralGetSignal(OAIObject summary);
    
    void applyTextTextPluralPostSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    void getVersionsTextTextPluralGetSignalFull(OAIHttpRequestWorker* worker, OAIObject summary);
    
    void applyTextTextPluralPostSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsTextTextPluralGetSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString& error_str);
    
    void applyTextTextPluralPostSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    void getVersionsTextTextPluralGetSignalEFull(OAIHttpRequestWorker* worker, QNetworkReply::NetworkError error_type, QString& error_str);
    
};

}
#endif
