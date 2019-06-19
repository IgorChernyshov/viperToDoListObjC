//
//  TDLFlowBuilder.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "TDLFlowBuilder.h"
#import "TDLPresenter.h"
#import "TDLInteractor.h"


@implementation TDLFlowBuilder

- (TDLViewController *)buildToDoListFlow
{
	TDLViewController *view = [TDLViewController new];
	TDLPresenter *presenter = [TDLPresenter new];
	TDLInteractor *interactor = [TDLInteractor new];
	
	view.eventHandler = presenter;
	presenter.view = view;
	presenter.todoItemsProvider = interactor;
	interactor.output = presenter;
	
	return view;
}

@end
