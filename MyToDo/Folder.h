//
//  Folder.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 8/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Task;

@interface Folder : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Task *tasks;

@end
