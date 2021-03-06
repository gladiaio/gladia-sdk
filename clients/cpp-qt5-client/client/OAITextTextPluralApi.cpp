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

#include "OAITextTextPluralApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAITextTextPluralApi::OAITextTextPluralApi() {

}

OAITextTextPluralApi::~OAITextTextPluralApi() {

}

OAITextTextPluralApi::OAITextTextPluralApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
OAITextTextPluralApi::applyTextTextPluralPost(const QString& word, const qint32& count, const QString& model) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/text/text/plural/");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("word"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(word)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("count"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(count)));
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("model"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(model)));
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "POST");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAITextTextPluralApi::applyTextTextPluralPostCallback);

    worker->execute(&input);
}

void
OAITextTextPluralApi::applyTextTextPluralPostCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIObject output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit applyTextTextPluralPostSignal(output);
        emit applyTextTextPluralPostSignalFull(worker, output);
    } else {
        emit applyTextTextPluralPostSignalE(output, error_type, error_str);
        emit applyTextTextPluralPostSignalEFull(worker, error_type, error_str);
    }
}

void
OAITextTextPluralApi::getVersionsTextTextPluralGet() {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/text/text/plural/");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAITextTextPluralApi::getVersionsTextTextPluralGetCallback);

    worker->execute(&input);
}

void
OAITextTextPluralApi::getVersionsTextTextPluralGetCallback(OAIHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }
    OAIObject output(QString(worker->response));
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getVersionsTextTextPluralGetSignal(output);
        emit getVersionsTextTextPluralGetSignalFull(worker, output);
    } else {
        emit getVersionsTextTextPluralGetSignalE(output, error_type, error_str);
        emit getVersionsTextTextPluralGetSignalEFull(worker, error_type, error_str);
    }
}


}
