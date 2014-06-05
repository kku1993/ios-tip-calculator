//
//  UserPreference.h
//  TipCalculator
//
//  Created by Kevin Ku on 6/4/14.
//  Copyright (c) 2014 Kevin Ku. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserPreference : NSObject
- (void)setDefaultTipIndex:(int)index;
- (int)getDefaultTipIndex;

@end
