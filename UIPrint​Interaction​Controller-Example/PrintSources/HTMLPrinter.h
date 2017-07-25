//
//  HTMLPrinter.h
//  UIPrint​Interaction​Controller-Example
//
//  Created by Serhii Londar on 7/25/17.
//  Copyright © 2017 serhii-londar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTMLPrinter : NSObject

+ (HTMLPrinter *)sharedPrinter;

- (void)printHTMLWithName:(NSString *)fileName fromFilePath:(NSString *)filePath;

@end
