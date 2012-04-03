//
//  NewTaskViewController.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Repository.h"

@interface NewTaskViewController : UITableViewController {
    Repository *repository;
}

@property (weak, nonatomic) IBOutlet UITextField *taskTitle;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
