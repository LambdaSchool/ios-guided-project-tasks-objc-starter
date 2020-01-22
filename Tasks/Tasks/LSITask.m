//
//  LSITask.m
//  Tasks
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"
@implementation LSITask
- (instancetype)initWithName:(NSString *)name
                        date:(NSDate *)date
                        note:(NSString *)note {
    if (self = [super init]) {
        _name = name;
        _date = date;
        _note = note;
        NSLog(@"Task.init %@", name);
        /* String Tokens in NSLog() and printf()
         %@ = object and only works in NSLog()
         %p = pointer 0x2349EF
         %i %d = int
         %f = float
         %c = char
         %s = char * (c string) = c programming language
         */
    }
    return self;
}
- (void)dealloc {
    // use _name instead self.name to prevent side effects
    NSLog(@"Task.dealloc");
}
// Properties create 3 things
// 1. instance variable
// 2. setter
// 3. getter
//- (void)setName:(NSString *)name {
//    _name = name;
//    saveToFirebase(); // side-effect
//}

@end
