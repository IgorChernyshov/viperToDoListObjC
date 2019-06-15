//
//  ToDoListInteractor.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ToDoListInteractorOutput <NSObject>

- (void)provideToDoItems;

@end

@interface ToDoListInteractor : NSObject <ToDoListInteractorOutput>

@end

NS_ASSUME_NONNULL_END
