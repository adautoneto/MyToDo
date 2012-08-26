//
//  Folder+AddOn.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 8/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Folder+AddOn.h"
#import "Repository.h"
#import "NSManagedObjectContext+Fetches.h"

@implementation Folder (AddOn)

#define ENTITY_NAME @"Folder"

+ (Folder *)inbox
{
    NSManagedObjectContext *context = Repository.sharedInstance.managedObjectContext;
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self == %@", 1];
    NSArray *folders = [context getResultsFromEntity:ENTITY_NAME predicateOrNil:predicate];
    
    return [folders objectAtIndex:0];
}

@end
