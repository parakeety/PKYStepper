//
//  PKYStepper.h
//  PKYStepper
//
//  Created by Okada Yohei on 1/11/15.
//  Copyright (c) 2015 yohei okada. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PKYStepper;
// called when value is changed
typedef void (^PKYStepperValueChangedCallback)(PKYStepper *stepper, float newValue);

// called when value is incremented
typedef void (^PKYStepperIncrementedCallback)(PKYStepper *stepper, float newValue);


// called when value is decremented
typedef void (^PKYStepperDecrementedCallback)(PKYStepper *stepper, float newValue);

IB_DESIGNABLE
@interface PKYStepper : UIControl {
    IBInspectable UIColor *borderColor; //Default lightBlue
    IBInspectable float borderWidth; //Default 1.0
    IBInspectable UIColor *labelTextColor; //Default lightBlue
    IBInspectable UIColor *labelColor; //Default whiteColor
    IBInspectable UIColor *buttonTextColor; //Default lightBlue
    IBInspectable UIColor *buttonBackgroundColor; //Default whiteColor
}
@property(nonatomic, strong) UILabel *countLabel;
@property(nonatomic, strong) UIButton *incrementButton;
@property(nonatomic, strong) UIButton *decrementButton;

@property(nonatomic) IBInspectable float value; // default: 0.0
@property(nonatomic) IBInspectable float stepInterval; // default: 1.0
@property(nonatomic) IBInspectable float minimumValue; // default: 0.0
@property(nonatomic) IBInspectable float maximumValue; // default: 100.0
@property(nonatomic) IBInspectable BOOL hidesDecrementWhenMinimum; // default: NO
@property(nonatomic) IBInspectable BOOL hidesIncrementWhenMaximum; // default: NO
@property(nonatomic) CGFloat buttonWidth; // default: 44.0f

@property(nonatomic, copy) PKYStepperValueChangedCallback valueChangedCallback;
@property(nonatomic, copy) PKYStepperIncrementedCallback incrementCallback;
@property(nonatomic, copy) PKYStepperDecrementedCallback decrementCallback;

// call this method after setting value(s) and callback(s)
// This method will call callback
- (void)setup;

// view customization
- (void)setBorderColor:(UIColor *)color;
- (void)setBorderWidth:(CGFloat)width;
- (void)setCornerRadius:(CGFloat)radius;

- (void)setLabelTextColor:(UIColor *)color;
- (void)setLabelFont:(UIFont *)font;

- (void)setButtonTextColor:(UIColor *)color forState:(UIControlState)state;
- (void)setButtonFont:(UIFont *)font;

@end
