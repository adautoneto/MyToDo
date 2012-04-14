//
//  Task.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 4/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic, strong) NSString *title;
@property bool done;

@end
