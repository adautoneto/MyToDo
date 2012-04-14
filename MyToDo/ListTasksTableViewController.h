//
//  ListTasksTableViewController.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserDefaultsRepository.h"
#import "TaskCell.h"
#import "Task.h"

@interface ListTasksTableViewController : UITableViewController {
    UserDefaultsRepository *repository;
    NSArray *tasks;
}

@end
