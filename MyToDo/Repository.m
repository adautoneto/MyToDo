//
//  Repository.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Repository.h"

@interface Repository()
@property (readonly) NSUserDefaults *defaults;
@end

@implementation Repository

- (NSUserDefaults *)defaults
{
    return [NSUserDefaults standardUserDefaults];
}

#define TASKS_KEY @"MyToDo.Tasks"

- (id)getAll
{
    return [self.defaults objectForKey:TASKS_KEY];
}

- (void)save:(id)item
{
    NSMutableArray *data = [[self getAll] mutableCopy];
    [data addObject:item];
    [self.defaults setObject:data forKey:TASKS_KEY];
    [self.defaults synchronize];
}

@end
