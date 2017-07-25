//
//  ViewController.m
//  UIPrint​Interaction​Controller-Example
//
//  Created by Serhii Londar on 7/25/17.
//  Copyright © 2017 serhii-londar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (IBAction)print:(id)sender {
    
    
    if ([UIPrintInteractionController canPrintURL:self.imageURL]) {
        UIPrintInfo *printInfo = [UIPrintInfo printInfo];
        printInfo.jobName = self.imageURL.lastPathComponent;
        printInfo.outputType = UIPrintInfoOutputGeneral;
        
        UIPrintInteractionController *printController = [UIPrintInteractionController sharedPrintController];
        printController.printInfo = printInfo;
        
        printController.printingItem = self.imageURL;
        
        [printController presentAnimated:true completionHandler: nil];
    }
}

@end
