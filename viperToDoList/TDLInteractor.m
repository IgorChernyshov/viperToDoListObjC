//
//  TDLInteractor.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "TDLInteractor.h"
#import "TDLDataBase.h"


@interface TDLInteractor()

@property (nonatomic, strong) TDLDataBase *dataBase;

@end

@implementation TDLInteractor


#pragma mark - Initializer

- (instancetype)initWithDataBase:(TDLDataBase *)dataBase
{
	self = [super init];
	if (self) {
		_dataBase = dataBase;
	}
	return self;
}


#pragma mark - ToDoListItemsProviderProtocol

- (void)provideToDoItems
{
	NSArray<TDLToDoItem *> *todos = [self getDataFromDataBase];
	[self.output receiveToDoItems:todos];
}


#pragma mark - Private methods

- (NSArray<TDLToDoItem *> *)getDataFromDataBase
{
	return [self.dataBase loadAllTodos];
}

@end
