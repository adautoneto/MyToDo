//
//  Repository.h
//  MyToDo
//
//  Created by Adauto Francisco Leite Neto on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Repository : NSObject

- (id)getAll;
- (void)save:(id)item;

@end
