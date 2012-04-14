//
//  Repository.m
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UserDefaultsRepository.h"

@implementation UserDefaultsRepository

#define TASKS_KEY @"MyToDo.Tasks"

- (NSUserDefaults *)defaults
{
    return [NSUserDefaults standardUserDefaults];
}

- (NSMutableArray *)getAll
{
    return [self.defaults objectForKey:TASKS_KEY];
}

- (void)save:(id)item
{
    NSMutableArray *data = [[self getAll] mutableCopy];
    if (!data) data = [NSMutableArray array];
    [data addObject:item];
    [self.defaults setObject:data forKey:TASKS_KEY];
    [self.defaults synchronize];
    NSLog(@"Data count: %i", data.count);
    NSLog(@"Task count: %i", [[self getAll] count]);
}

@end
