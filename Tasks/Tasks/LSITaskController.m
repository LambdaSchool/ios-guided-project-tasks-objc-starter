//
//  LSITaskController.m
//  Tasks
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"
#import "LSITask.h"

// Class Extension
@interface LSITaskController() {
    // private instance variables
    
}

// private properties
@property (nonatomic) NSMutableArray *internalTasks;

// private methods

- (void)createTestData;

@end

@implementation LSITaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalTasks = [[NSMutableArray alloc] init];
        
        // TODO: Remove for production (testing only)
        [self createTestData];
    }
    return self;
}

// Computed property for tasks (esternal / public)
- (NSArray *)tasks {
    return [self.internalTasks copy]; // like let, immutable NSArray
}

- (void)addTask:(LSITask *)task {
    [self.internalTasks addObject:task];
}

- (void)removeTask:(LSITask *)task {
    [self.internalTasks removeObject:task];
}


- (void)createTestData {
    LSITask *task1 = [[LSITask alloc] initWithName:@"Walk the dog"
                                              date:[NSDate dateWithTimeIntervalSinceNow:60*60*24*3]
                                              note:@"Some notes"];
    LSITask *task2 = [[LSITask alloc] initWithName:@"Buy groceries"
                                              date:[NSDate dateWithTimeIntervalSinceNow:60*60*24*6]
                                              note:@"Some other notes"];
    [self addTask:task1];
    [self addTask:task2];
    
}


@end
