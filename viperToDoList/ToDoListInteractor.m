//
//  ToDoListInteractor.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoListInteractor.h"
#import "ToDoListDataBase.h"
@class GreetingOutput;

@interface ToDoListInteractor()

@property (nonatomic, weak) GreetingOutput *output;

@end

@implementation ToDoListInteractor

- (void)provideToDoItems
{
	NSArray<ToDoItem *> *todos = [self getDataFromDataBase];
	[self.output.receiveToDoItem todos];
}

- (NSArray<ToDoItem *> *)getDataFromDataBase
{
	return [[ToDoListDataBase sharedInstance] loadAllTodos];
}

@end
