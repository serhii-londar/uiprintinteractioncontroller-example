//
//  HTMLPrinter.h
//  UIPrint​Interaction​Controller-Example
//
//  Created by Serhii Londar on 7/25/17.
//  Copyright © 2017 serhii-londar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HTMLPrinter : NSObject

+ (HTMLPrinter *_Nonnull)sharedPrinter;

- (void)printHTMLWithName:(NSString *_Nonnull)fileName fromFilePath:(NSString *_Nonnull)filePath completionHandler:(nullable UIPrintInteractionCompletionHandler)completionHandler;

@end
