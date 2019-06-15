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
	NSMutableArray<NSString *> *todosViewData = [NSMutableArray new];
	for (ToDoItem *item in todos)
	{
		NSString *todo = [NSString stringWithFormat:@"%@ - %@", item.title, item.content];
		[todosViewData addObject:todo];
	}
	[self.view showTodos:[todos copy]];
}

- (void)loadToDoItems
{
	[self.todoItemsProvider provideToDoItems];
}

@end
