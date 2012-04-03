//
//  ListTasksTableViewController.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Repository.h"

@interface ListTasksTableViewController : UITableViewController {
    Repository *repository;
    NSArray *tasks;
}

@end
