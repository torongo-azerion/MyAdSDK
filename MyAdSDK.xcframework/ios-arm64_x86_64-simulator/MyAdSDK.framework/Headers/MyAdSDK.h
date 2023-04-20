//
//  MyAdSDK.h
//  MyAdSDK
//
//  Created by Nagib Bin Azad on 19/4/23.
//

#import <Foundation/Foundation.h>

//! Project version number for MyAdSDK.
FOUNDATION_EXPORT double MyAdSDKVersionNumber;

//! Project version string for MyAdSDK.
FOUNDATION_EXPORT const unsigned char MyAdSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MyAdSDK/PublicHeader.h>

typedef void (^InitializationCompletionHandler)(BOOL success, NSError *error);

@interface MyAdSDK : NSObject

+ (void)initializeWithCompletionHandler:(InitializationCompletionHandler)completionHandler;

@end
