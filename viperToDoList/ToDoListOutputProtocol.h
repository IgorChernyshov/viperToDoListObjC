//
//  ToDoListOutputProtocol.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

NS_ASSUME_NONNULL_BEGIN


@protocol ToDoListOutputProtocol <NSObject>

- (void)receiveToDoItems:(NSArray<ToDoItem *> *)todos;

@end

NS_ASSUME_NONNULL_END
