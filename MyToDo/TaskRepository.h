//
//  TaskRepository.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RepositoryBase.h"
#import "Task+AddOn.h"

@interface TaskRepository : RepositoryBase

+(TaskRepository*)sharedRepo;

- (Task *)addTask:(NSString *)title;
-(void)deleteTask:(Task *)task;

@end
