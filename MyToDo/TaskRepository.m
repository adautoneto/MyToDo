//
//  TaskRepository.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TaskRepository.h"
#import "AppDelegate.h"

static TaskRepository* sharedRepo = nil;

@implementation TaskRepository

+(TaskRepository *)sharedRepo{
	if(!sharedRepo){
		sharedRepo = [[TaskRepository alloc] init];
		
		//we assign the app delegates CoreData stack to this repository,
		//that way if we need to, we can have other repositories use the same 
		//stack.  Thanks @kode80!
		AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
		[sharedRepo setManagedObjectModel:appDelegate.managedObjectModel];
		[sharedRepo setPersistentStoreCoordinator:[appDelegate persistentStoreCoordinator]];
		[sharedRepo setManagedObjectContext:appDelegate.managedObjectContext];
	}
	return sharedRepo;
}

/*
- (NSArray *)getAll
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Task"];
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO];
    request.sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    
    NSError *error = nil;
    NSArray *matches = [self.taskDatabase.managedObjectContext executeFetchRequest:request error:&error];
    NSLog(@"database state = %@", self.taskDatabase.documentState == UIDocumentStateNormal);
    return matches;
}
*/

- (Task *)addTask:(NSString *)title
{
    // Create a new instance of the entity managed by the fetched results controller.
    NSManagedObjectContext *context = [self managedObjectContext];
    Task *task = [NSEntityDescription insertNewObjectForEntityForName:@"Task" inManagedObjectContext:context];
    
    // If appropriate, configure the new managed object.
    task.creationDate = [NSDate date];
    task.title = title;
    //task.done = [[NSNumber alloc] initWithBool:NO];
    
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

-(void)deleteTask:(Task *)task
{
	
	NSManagedObjectContext *context = [self managedObjectContext];
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

@end
