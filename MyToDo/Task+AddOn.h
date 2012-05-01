//
//  Task+AddOn.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Task.h"

@interface Task (AddOn)

- (void)setDone:(NSNumber *)done;
+(BOOL)addTask:(NSString *)title;
+(BOOL)deleteTask:(Task *)task;
+(NSFetchedResultsController *) getFetchedResultsController:(NSPredicate *)predicateOrNil ascSort:(NSArray *)ascSort descSort:(NSArray *)descSort batchSize:(int)batchSize;

@end
