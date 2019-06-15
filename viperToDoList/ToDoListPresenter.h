//
//  ToDoListPresenter.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoListOutputProtocol.h"
#import "ToDoListViewEventHandlerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoListPresenter : NSObject <ToDoListOutputProtocol, ToDoListViewEventHandlerProtocol>

@end

NS_ASSUME_NONNULL_END
