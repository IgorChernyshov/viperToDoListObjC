//
//  ToDoListModuleBuilder.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoListModuleBuilder.h"
#import "ToDoListPresenter.h"
#import "ToDoListInteractor.h"


@implementation ToDoListModuleBuilder

- (ToDoListViewController *)buildToDoListModule
{
	ToDoListViewController *view = [ToDoListViewController new];
	ToDoListPresenter *presenter = [ToDoListPresenter new];
	ToDoListInteractor *interactor = [ToDoListInteractor new];
	
	view.eventHandler = presenter;
	presenter.view = view;
	presenter.todoItemsProvider = interactor;
	interactor.output = presenter;
	
	return view;
}

@end
