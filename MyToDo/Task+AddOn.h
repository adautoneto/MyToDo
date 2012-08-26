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
+(Task *)addTask:(NSString *)title inFolder:(Folder *)folder;
+(void)deleteTask:(Task *)task;
+(NSFetchedResultsController *) getFetchedResultsControllerSortedByDate;

@end
