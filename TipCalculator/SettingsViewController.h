//
//  SettingsViewController.h
//  TipCalculator
//
//  Created by Abraham Adam on 1/10/14.
//  Copyright (c) 2014 Abraham Adam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

+ (void)saveValue:(int)value;
+ (int)loadValue;
+ (BOOL)valueExist;
@end
