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

#include "OAITextTextHateSpeechDetectionApi.h"
#include "OAIHelpers.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAITextTextHateSpeechDetectionApi::OAITextTextHateSpeechDetectionApi() {

}

OAITextTextHateSpeechDetectionApi::~OAITextTextHateSpeechDetectionApi() {

}

OAITextTextHateSpeechDetectionApi::OAITextTextHateSpeechDetectionApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
OAITextTextHateSpeechDetectionApi::applyTextTextHateSpeechDetectionPost(const QString& text, const QString& model) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/text/text/hate-speech-detection/");
    
    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("text"))
        .append("=")
        .append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(text)));
    
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
            &OAITextTextHateSpeechDetectionApi::applyTextTextHateSpeechDetectionPostCallback);

    worker->execute(&input);
}

void
OAITextTextHateSpeechDetectionApi::applyTextTextHateSpeechDetectionPostCallback(OAIHttpRequestWorker * worker) {
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
        emit applyTextTextHateSpeechDetectionPostSignal(output);
        emit applyTextTextHateSpeechDetectionPostSignalFull(worker, output);
    } else {
        emit applyTextTextHateSpeechDetectionPostSignalE(output, error_type, error_str);
        emit applyTextTextHateSpeechDetectionPostSignalEFull(worker, error_type, error_str);
    }
}

void
OAITextTextHateSpeechDetectionApi::getVersionsTextTextHateSpeechDetectionGet() {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/text/text/hate-speech-detection/");
    
    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker();
    OAIHttpRequestInput input(fullPath, "GET");


    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &OAIHttpRequestWorker::on_execution_finished,
            this,
            &OAITextTextHateSpeechDetectionApi::getVersionsTextTextHateSpeechDetectionGetCallback);

    worker->execute(&input);
}

void
OAITextTextHateSpeechDetectionApi::getVersionsTextTextHateSpeechDetectionGetCallback(OAIHttpRequestWorker * worker) {
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
        emit getVersionsTextTextHateSpeechDetectionGetSignal(output);
        emit getVersionsTextTextHateSpeechDetectionGetSignalFull(worker, output);
    } else {
        emit getVersionsTextTextHateSpeechDetectionGetSignalE(output, error_type, error_str);
        emit getVersionsTextTextHateSpeechDetectionGetSignalEFull(worker, error_type, error_str);
    }
}


}
