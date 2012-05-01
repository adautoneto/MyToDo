//
//  ListTasksTableViewController.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserDefaultsRepository.h"
#import "CoreDataTableViewController.h"
#import "TaskViewCell.h"
#import "Task+AddOn.h"

@interface ListTasksTableViewController : CoreDataTableViewController

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;

@end
