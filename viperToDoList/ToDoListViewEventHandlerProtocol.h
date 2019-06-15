//
//  ToDoListViewEventHandlerProtocol.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ToDoListViewEventHandlerProtocol <NSObject>

- (void)loadToDoItems;

@end

NS_ASSUME_NONNULL_END
