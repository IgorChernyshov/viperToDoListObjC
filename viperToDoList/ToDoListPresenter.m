//
//  ToDoListPresenter.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoListPresenter.h"

@implementation ToDoListPresenter

- (void)receiveToDoItems:(nonnull NSArray<ToDoItem *> *)todos
{
	NSMutableArray<NSString *> *todosViewModel = [NSMutableArray new];
	for (ToDoItem *item in todos)
	{
		NSString *todo = [NSString stringWithFormat:@"%@ - %@", item.title, item.content];
		[todosViewModel addObject:todo];
	}
	[self.view showTodos:[todosViewModel copy]];
}

- (void)loadToDoItems
{
	[self.todoItemsProvider provideToDoItems];
}

@end
