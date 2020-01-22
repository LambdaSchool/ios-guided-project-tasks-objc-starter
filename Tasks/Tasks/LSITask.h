//
//  LSITask.h
//  Tasks
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSITask : NSObject

// public properties

@property (nonatomic, copy) NSString *name;
@property (nonatomic)NSDate *date;
@property (nonatomic, copy)NSString *note;

// public methods

- (instancetype)initWithName:(NSString *)name
                        date:(NSDate *)date
                        note:(NSString *)note;

/*
 nonatomic - recommended (slightly faster, override properties)
 atomic* - thread 'safer'
 
 readonly -getter, no setter
 readwrite* - gatter/setter
 
 getter=    (hidden -> getter=isHidden
 setter=
 
 copy - use for NSString, NSArray, and other mutable collections
 assign* - default for primitive (double, float, int)
 
 strong* - ownership of memory
 weak - auto-nil
 
 class - class property, but it has no backing variable (static variable)
 
 retain
 unsafe_unretained
 */

@end
