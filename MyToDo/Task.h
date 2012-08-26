//
//  Task.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 8/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Folder, Tag;

@interface Task : NSManagedObject

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSNumber * done;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet *tags;
@property (nonatomic, retain) Folder *folders;
@end

@interface Task (CoreDataGeneratedAccessors)

- (void)addTagsObject:(Tag *)value;
- (void)removeTagsObject:(Tag *)value;
- (void)addTags:(NSSet *)values;
- (void)removeTags:(NSSet *)values;

@end
