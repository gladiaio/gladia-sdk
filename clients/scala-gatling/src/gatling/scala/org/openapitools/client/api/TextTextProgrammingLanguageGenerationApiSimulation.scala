package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class TextTextProgrammingLanguageGenerationApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("http://localhost")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val applyTextTextProgrammingLanguageGenerationPostPerSecond = config.getDouble("performance.operationsPerSecond.applyTextTextProgrammingLanguageGenerationPost") * rateMultiplier * instanceMultiplier
    val getVersionsTextTextProgrammingLanguageGenerationGetPerSecond = config.getDouble("performance.operationsPerSecond.getVersionsTextTextProgrammingLanguageGenerationGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val apply_text_text_programming_language_generation__postQUERYFeeder = csv(userDataDirectory + File.separator + "applyTextTextProgrammingLanguageGenerationPost-queryParams.csv").random

    // Setup all scenarios

    
    val scnapplyTextTextProgrammingLanguageGenerationPost = scenario("applyTextTextProgrammingLanguageGenerationPostSimulation")
        .feed(apply_text_text_programming_language_generation__postQUERYFeeder)
        .exec(http("applyTextTextProgrammingLanguageGenerationPost")
        .httpRequest("POST","/text/text/programming-language-generation/")
        .queryParam("code_snippet","${code_snippet}")
        .queryParam("model","${model}")
)

    // Run scnapplyTextTextProgrammingLanguageGenerationPost with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnapplyTextTextProgrammingLanguageGenerationPost.inject(
        rampUsersPerSec(1) to(applyTextTextProgrammingLanguageGenerationPostPerSecond) during(rampUpSeconds),
        constantUsersPerSec(applyTextTextProgrammingLanguageGenerationPostPerSecond) during(durationSeconds),
        rampUsersPerSec(applyTextTextProgrammingLanguageGenerationPostPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetVersionsTextTextProgrammingLanguageGenerationGet = scenario("getVersionsTextTextProgrammingLanguageGenerationGetSimulation")
        .exec(http("getVersionsTextTextProgrammingLanguageGenerationGet")
        .httpRequest("GET","/text/text/programming-language-generation/")
)

    // Run scngetVersionsTextTextProgrammingLanguageGenerationGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetVersionsTextTextProgrammingLanguageGenerationGet.inject(
        rampUsersPerSec(1) to(getVersionsTextTextProgrammingLanguageGenerationGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getVersionsTextTextProgrammingLanguageGenerationGetPerSecond) during(durationSeconds),
        rampUsersPerSec(getVersionsTextTextProgrammingLanguageGenerationGetPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
