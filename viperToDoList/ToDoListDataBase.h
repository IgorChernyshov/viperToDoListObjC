//
//  ToDoListDataBase.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

NS_ASSUME_NONNULL_BEGIN


@interface ToDoListDataBase : NSObject

+ (instancetype)sharedInstance;
- (NSArray<ToDoItem *> *)loadAllTodos;

@end

NS_ASSUME_NONNULL_END
