//
//  StoryboardViewController.m
//  PKYStepper
//
//  Created by Okada Yohei on 1/25/15.
//  Copyright (c) 2015 yohei okada. All rights reserved.
//

#import "StoryboardViewController.h"

#import "PKYStepper.h"

@interface StoryboardViewController ()
@property(nonatomic, weak) IBOutlet PKYStepper *stepper;
@end

@implementation StoryboardViewController

- (void)viewDidLoad
{
    self.stepper.value = 5.0f;
    self.stepper.stepInterval = 5.0f;
    self.stepper.valueChangedCallback = ^(PKYStepper *stepper, float count) {
        stepper.countLabel.text = [NSString stringWithFormat:@"Count: %@", @(count)];
    };
    [self.stepper setup];
}

@end
