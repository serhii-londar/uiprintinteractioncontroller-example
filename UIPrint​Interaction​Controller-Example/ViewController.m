//
//  ViewController.m
//  UIPrint​Interaction​Controller-Example
//
//  Created by Serhii Londar on 7/25/17.
//  Copyright © 2017 serhii-londar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSMutableArray<UIImage *> *_images;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _images = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 1; i < 26; i++) {
        [_images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%ld", (long)i]]];
    }
    
    
}
    
- (IBAction)print:(id)sender {
    for (UIImage *image in _images) {
        if ([UIPrintInteractionController canPrintData:UIImagePNGRepresentation(image)] == NO) {
            return;
        }
    }
    
    UIPrintInfo *printInfo = [UIPrintInfo printInfo];
    printInfo.jobName = @"Printing images";
    printInfo.outputType = UIPrintInfoOutputPhoto;
    
    UIPrintInteractionController *printController = [UIPrintInteractionController sharedPrintController];
    printController.printInfo = printInfo;
    
    printController.printingItems = _images;
    

    [printController presentAnimated:true completionHandler: nil];

}

@end
