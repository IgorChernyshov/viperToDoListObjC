//
//  ToDoListInteractor.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoListItemsProviderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoListInteractor : NSObject <ToDoListItemsProviderProtocol>

@end

NS_ASSUME_NONNULL_END
