//
//  Task+AddOn.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Task+AddOn.h"
#import "TaskRepository.h"

@implementation Task (AddOn)

- (void)setDone:(NSNumber *)done
{
    self.done = done;
}

+(BOOL)addTask:(NSString *)title
{
	[[TaskRepository sharedRepo] addTask:title];
	return YES;
}

+(BOOL)deleteTask:(Task *)task
{
	[[TaskRepository sharedRepo] deleteTask:task];
	return YES;
}

+(NSFetchedResultsController *) getFetchedResultsController:(NSPredicate *)predicateOrNil ascSort:(NSArray *)ascSort descSort:(NSArray *)descSort batchSize:(int)batchSize  
{
    return [[TaskRepository sharedRepo] fetchedResultsController:@"Task" 
                                                    predicateOrNil:predicateOrNil 
                                                ascSortStringOrNil:ascSort 
                                               descSortStringOrNil:descSort 
                                                         batchSize:batchSize];
}

@end
