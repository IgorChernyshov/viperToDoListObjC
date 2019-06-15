//
//  ToDoListInteractor.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoListInteractor.h"
#import "ToDoListDataBase.h"


@implementation ToDoListInteractor


#pragma mark - ToDoListItemsProviderProtocol

- (void)provideToDoItems
{
	NSArray<ToDoItem *> *todos = [self getDataFromDataBase];
	[self.output receiveToDoItems:todos];
}


#pragma mark - Private methods

- (NSArray<ToDoItem *> *)getDataFromDataBase
{
	return [[ToDoListDataBase sharedInstance] loadAllTodos];
}

@end
