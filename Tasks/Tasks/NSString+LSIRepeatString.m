//
//  NSString+LSIRepeatString.m
//  Tasks
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.

#import "NSString+LSIRepeatString.h"

@implementation NSString (LSIRepeatString)

- (NSString *)lsi_repeatString {
    
    return [NSString stringWithFormat:@"%@%@%@", self, self, self];
}

@end
