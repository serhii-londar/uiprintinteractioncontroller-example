//
//  ViewController.m
//  UIPrint​Interaction​Controller-Example
//
//  Created by Serhii Londar on 7/25/17.
//  Copyright © 2017 serhii-londar. All rights reserved.
//

#import "ViewController.h"
#import "HTMLPrinter.h"

@interface ViewController ()<UIWebViewDelegate> 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
    
- (IBAction)printFromDocumets:(id)sender {
    NSURL *documentsUrl = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    NSURL *printFolderUrl = [documentsUrl URLByAppendingPathComponent:@"Print"];
    
    [[HTMLPrinter sharedPrinter] printHTMLWithName:@"index.html" fromFilePath:printFolderUrl.absoluteString];
}

- (IBAction)printFromBundle:(id)sender {
    NSString *indexHtmlStringPath = [[[NSBundle mainBundle] bundleURL] absoluteString];
    
    [[HTMLPrinter sharedPrinter] printHTMLWithName:@"index.html" fromFilePath:indexHtmlStringPath];
}


@end
