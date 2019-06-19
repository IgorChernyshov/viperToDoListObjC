//
//  TDLInteractor.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "TDLInteractor.h"
#import "TDLDataBase.h"


@implementation TDLInteractor


#pragma mark - ToDoListItemsProviderProtocol

- (void)provideToDoItems
{
	NSArray<TDLToDoItem *> *todos = [self getDataFromDataBase];
	[self.output receiveToDoItems:todos];
}


#pragma mark - Private methods

- (NSArray<TDLToDoItem *> *)getDataFromDataBase
{
	return [[TDLDataBase sharedInstance] loadAllTodos];
}

@end
