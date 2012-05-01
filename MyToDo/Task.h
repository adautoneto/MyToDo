//
//  Task.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Task : NSManagedObject

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSNumber * done;
@property (nonatomic, retain) NSString * title;

@end
