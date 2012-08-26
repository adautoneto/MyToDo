//
//  Task+AddOn.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Task+AddOn.h"
#import "Repository.h"
#import "NSManagedObjectContext+Fetches.h"

@implementation Task (AddOn)

#define ENTITY_NAME @"Task"

- (void)setDone:(NSNumber *)done
{
    self.done = done;
}

+(Task *)addTask:(NSString *)title inFolder:(Folder *)folder
{
	NSManagedObjectContext *context = Repository.sharedInstance.managedObjectContext;
    Task *task = [NSEntityDescription insertNewObjectForEntityForName:ENTITY_NAME inManagedObjectContext:context];
    
    // If appropriate, configure the new managed object.
    task.folder = folder;
    task.creationDate = [NSDate date];
    task.title = title;
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
	
	return task;
}

+(void)deleteTask:(Task *)task
{
	NSManagedObjectContext *context = Repository.sharedInstance.managedObjectContext;
	[context deleteObject:task];
	
	// Save the context.
	NSError *error = nil;
	if (![context save:&error]) {
		/*
		 Replace this implementation with code to handle the error appropriately.
		 
		 abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
		 */
		NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();
	}
}

+(NSFetchedResultsController *) getFetchedResultsControllerSortedByDate
{
    NSManagedObjectContext *context = Repository.sharedInstance.managedObjectContext;
    NSArray *descSort = [NSArray arrayWithObject:@"creationDate"];
    return [context fetchedResultsController:ENTITY_NAME
                                 predicateOrNil:nil 
                                 ascSortStringOrNil:nil 
                                 descSortStringOrNil:descSort 
                                 batchSize:20];
}

@end
