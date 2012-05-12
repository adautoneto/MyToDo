//
//  NSManagedObjectContext+Fetches.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 5/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (Fetches)

- (NSMutableArray *) getResultsFromEntity:(NSString *)entityName;
- (NSMutableArray *) getResultsFromEntity:(NSString *)entityName predicateOrNil:(NSPredicate *)predicateOrNil;
- (NSMutableArray *) getResultsFromEntity:(NSString *)entityName predicateOrNil:(NSPredicate *)predicateOrNil ascSortStringOrNil:(NSArray *)ascSortStringOrNil descSortStringOrNil:(NSArray *)descSortStringOrNil;

- (NSFetchedResultsController *)fetchedResultsController:(NSString *)entityName predicateOrNil:(NSPredicate *)predicateOrNil ascSortStringOrNil:(NSArray *)ascSortStringOrNil descSortStringOrNil:(NSArray *)descSortStringOrNil batchSize:(int)batchSize;

@end
