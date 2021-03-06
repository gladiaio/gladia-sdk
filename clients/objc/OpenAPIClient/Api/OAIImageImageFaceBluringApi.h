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



@interface OAIImageImageFaceBluringApi: NSObject <OAIApi>

extern NSString* kOAIImageImageFaceBluringApiErrorDomain;
extern NSInteger kOAIImageImageFaceBluringApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Apply model for the face-bluring task for a given models
/// 
///
/// @param image 
/// @param model  (optional) (default to @"ageitgey")
/// 
///  code:200 message:"Successful Response",
///  code:422 message:"Validation Error"
///
/// @return NSObject*
-(NSURLSessionTask*) applyImageImageFaceBluringPostWithImage: (NSURL*) image
    model: (NSString*) model
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Get list of models available for face-bluring
/// 
///
/// 
///  code:200 message:"Successful Response"
///
/// @return NSObject*
-(NSURLSessionTask*) getVersionsImageImageFaceBluringGetWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler;



@end
