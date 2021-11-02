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



@interface OAITextTextDependencyTrackingApi: NSObject <OAIApi>

extern NSString* kOAITextTextDependencyTrackingApiErrorDomain;
extern NSInteger kOAITextTextDependencyTrackingApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Apply model for the dependency-tracking task for a given models
/// 
///
/// @param inputString  (optional) (default to @"Text to analyzed")
/// @param model  (optional) (default to @"LAL-Parser")
/// 
///  code:200 message:"Successful Response",
///  code:422 message:"Validation Error"
///
/// @return NSObject*
-(NSURLSessionTask*) applyTextTextDependencyTrackingPostWithInputString: (NSString*) inputString
    model: (NSString*) model
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Get list of models available for dependency-tracking
/// 
///
/// 
///  code:200 message:"Successful Response"
///
/// @return NSObject*
-(NSURLSessionTask*) getVersionsTextTextDependencyTrackingGetWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler;



@end
