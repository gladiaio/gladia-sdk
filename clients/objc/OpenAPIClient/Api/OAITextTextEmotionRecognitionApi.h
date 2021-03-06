#import <Foundation/Foundation.h>
#import "OAIHTTPValidationError.h"
#import "OAIApi.h"

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



@interface OAITextTextEmotionRecognitionApi: NSObject <OAIApi>

extern NSString* kOAITextTextEmotionRecognitionApiErrorDomain;
extern NSInteger kOAITextTextEmotionRecognitionApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Apply model for the emotion-recognition task for a given models
/// 
///
/// @param text  (optional) (default to @"I like you. I love you")
/// @param model  (optional) (default to @"mrm8488-t5-base-finetuned-emotion")
/// 
///  code:200 message:"Successful Response",
///  code:422 message:"Validation Error"
///
/// @return NSObject*
-(NSURLSessionTask*) applyTextTextEmotionRecognitionPostWithText: (NSString*) text
    model: (NSString*) model
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Get list of models available for emotion-recognition
/// 
///
/// 
///  code:200 message:"Successful Response"
///
/// @return NSObject*
-(NSURLSessionTask*) getVersionsTextTextEmotionRecognitionGetWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler;



@end
