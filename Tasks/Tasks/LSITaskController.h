//
//  LSITaskController.h
//  Tasks
//
//  Created by morse on 1/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSITask;

@interface LSITaskController : NSObject

// public properties

@property (readonly, nonatomic) NSArray *tasks;

// public methods

- (void)addTask:(LSITask *)task;
- (void)removeTask:(LSITask *)task;

@end
