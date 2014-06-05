//
//  UserPreference.m
//  TipCalculator
//
//  Created by Kevin Ku on 6/4/14.
//  Copyright (c) 2014 Kevin Ku. All rights reserved.
//

#import "UserPreference.h"

@implementation UserPreference

- (void)setDefaultTipIndex:(int)index {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:index forKey:@"default_tip_index"];
    [defaults synchronize];
}

/*
 *  Get the index of the default tip amount in the tip segmented control
 *  Returns 0 when no default has been set
 */
- (int)getDefaultTipIndex {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    @try{
        int defaultTipIndex = [defaults integerForKey:@"default_tip_index"];
        return defaultTipIndex;
    }@catch (NSException *e) {
        NSLog(@"Exception %@", e);
        return 0;
    }
}

@end
