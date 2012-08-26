//
//  ModelCreator.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 8/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ModelCreator.h"
#import "Repository.h"
#import "Folder.h"
#import "NSManagedObjectContext+Fetches.h"

@implementation ModelCreator

+ (void) createInboxIfNotExists {
    NSManagedObjectContext *context = Repository.sharedInstance.managedObjectContext;
    Folder *folder = [NSEntityDescription insertNewObjectForEntityForName:@"Folder" inManagedObjectContext:context];
    
    // If appropriate, configure the new managed object.
    folder.name = @"Inbox";
    
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
