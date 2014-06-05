//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Kevin Ku on 6/4/14.
//  Copyright (c) 2014 Kevin Ku. All rights reserved.
//

#import "SettingsViewController.h"
#import "UserPreference.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UserPreference *up = [[UserPreference alloc] init];
    self.defaultTipControl.selectedSegmentIndex = [up getDefaultTipIndex];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:true];
    
    // save the selected index as the default index
    int defaultTipIndex = self.defaultTipControl.selectedSegmentIndex;
    UserPreference *up = [[UserPreference alloc] init];
    [up setDefaultTipIndex:defaultTipIndex];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
