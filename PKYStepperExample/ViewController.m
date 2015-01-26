//
//  ViewController.m
//  PKYStepper
//
//  Created by Okada Yohei on 1/9/15.
//  Copyright (c) 2015 yohei okada. All rights reserved.
//

#import "ViewController.h"

#import "PKYStepper.h"

@interface ViewController ()
@property(nonatomic, strong) PKYStepper *plainStepper;
@property(nonatomic, strong) PKYStepper *noneStepper;
@property(nonatomic, strong) PKYStepper *hideButtonStepper;
@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float width = 260.0f;
    float x = ([UIScreen mainScreen].bounds.size.width - width) / 2.0;
    
    // plain
    self.plainStepper = [[PKYStepper alloc] initWithFrame:CGRectMake(x, 100, width, 44)];
    self.plainStepper.valueChangedCallback = ^(PKYStepper *stepper, float count) {
        stepper.countLabel.text = [NSString stringWithFormat:@"Dogs: %@", @(count)];
    };
    [self.plainStepper setup];
    [self.view addSubview:self.plainStepper];
    
    
    // customize
    self.noneStepper = [[PKYStepper alloc] initWithFrame:CGRectMake(x, 200, width, 44)];
    [self.noneStepper setCornerRadius:0.0f];
    [self.noneStepper setBorderColor:[UIColor colorWithWhite:0.95 alpha:1.0]];
    [self.noneStepper setLabelTextColor:[UIColor colorWithRed:0.91 green:0.55 blue:0.22 alpha:1.0]];
    self.noneStepper.value = 1.0f;
    self.noneStepper.valueChangedCallback = ^(PKYStepper *stepper, float count) {
        stepper.countLabel.text = count == stepper.minimum ? @"None" : [NSString stringWithFormat:@"Cats: %@", @(count)];
    };
    [self.noneStepper setup];
    [self.view addSubview:self.noneStepper];
    
    
    // customize uicontrols exposed via property
    self.hideButtonStepper = [[PKYStepper alloc] initWithFrame:CGRectMake(x, 300, width, 30)];
    self.hideButtonStepper.maximum = 3.0f;
    self.hideButtonStepper.hidesDecrementWhenMinimum = YES;
    self.hideButtonStepper.hidesIncrementWhenMaximum = YES;
    self.hideButtonStepper.buttonWidth = 30.0f;
    
    [self.hideButtonStepper setBorderWidth:0.0f];
    
    self.hideButtonStepper.countLabel.layer.borderWidth = 0.0f;
    self.hideButtonStepper.countLabel.textColor = [UIColor darkGrayColor];
    
    self.hideButtonStepper.incrementButton.layer.borderWidth = 1.0f;
    self.hideButtonStepper.incrementButton.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.hideButtonStepper.incrementButton.layer.cornerRadius = 5.0f;
    [self.hideButtonStepper.incrementButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    
    self.hideButtonStepper.decrementButton.layer.borderWidth = 1.0f;
    self.hideButtonStepper.decrementButton.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.hideButtonStepper.decrementButton.layer.cornerRadius = 5.0f;
    [self.hideButtonStepper.decrementButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    
    self.hideButtonStepper.valueChangedCallback = ^(PKYStepper *stepper, float count) {
        stepper.countLabel.text = [NSString stringWithFormat:@"Parakeets: %@", @(count)];
    };
    [self.hideButtonStepper setup];
    [self.view addSubview:self.hideButtonStepper];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
