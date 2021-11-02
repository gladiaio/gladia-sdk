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



@interface OAIImageImageColorizationApi: NSObject <OAIApi>

extern NSString* kOAIImageImageColorizationApiErrorDomain;
extern NSInteger kOAIImageImageColorizationApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Apply model for the colorization task for a given models
/// 
///
/// @param image 
/// @param model  (optional) (default to @"deoldify-stable")
/// 
///  code:200 message:"Successful Response",
///  code:422 message:"Validation Error"
///
/// @return NSObject*
-(NSURLSessionTask*) applyImageImageColorizationPostWithImage: (NSURL*) image
    model: (NSString*) model
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Get list of models available for colorization
/// 
///
/// 
///  code:200 message:"Successful Response"
///
/// @return NSObject*
-(NSURLSessionTask*) getVersionsImageImageColorizationGetWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler;



@end
