//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Abraham Adam on 1/10/14.
//  Copyright (c) 2014 Abraham Adam. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultSettings;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    int value = [SettingsViewController loadValue];
    self.defaultSettings.selectedSegmentIndex = value;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    int value = self.defaultSettings.selectedSegmentIndex;
    [SettingsViewController saveValue:value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (void)saveValue:(int)value{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:YES forKey:@"haveValue"];
    [defaults setInteger:value forKey:@"tipValue"];
    [defaults synchronize];
}

+ (int)loadValue {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int intValue = [defaults integerForKey:@"tipValue"];
    return intValue;
}
// check if we have the value so we set it otherwise when we go to settings
+ (BOOL)valueExist {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults boolForKey:@"haveValue"];
}
@end
