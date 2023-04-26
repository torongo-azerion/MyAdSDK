//
//  MyDFPAdapter.h
//  MyDFPAdapter
//
//  Created by Nagib Bin Azad on 19/4/23.
//

#import <Foundation/Foundation.h>

//! Project version number for MyDFPAdapter.
FOUNDATION_EXPORT double MyDFPAdapterVersionNumber;

//! Project version string for MyDFPAdapter.
FOUNDATION_EXPORT const unsigned char MyDFPAdapterVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MyDFPAdapter/PublicHeader.h>

typedef void (^AdapterCompletionHandler)(BOOL success, NSError *error);

@interface MyDFPAdapter : NSObject

+ (void)initializeAdaperWithCompletionHandler:(AdapterCompletionHandler)completionHandler;

@end
