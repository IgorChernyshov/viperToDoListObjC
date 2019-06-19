//
//  TDLPresenter.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "TDLPresenter.h"


@implementation TDLPresenter


#pragma mark - ToDoListOutputProtocol

- (void)receiveToDoItems:(nonnull NSArray<TDLToDoItem *> *)todos
{
	NSMutableArray<NSString *> *todosViewModel = [NSMutableArray new];
	for (TDLToDoItem *item in todos)
	{
		NSString *todo = [NSString stringWithFormat:@"%@ - %@", item.title, item.content];
		[todosViewModel addObject:todo];
	}
	[self.view showTodos:[todosViewModel copy]];
}


#pragma mark - ToDoListViewEventHandlerProtocol

- (void)loadToDoItems
{
	[self.todoItemsProvider provideToDoItems];
}

@end
