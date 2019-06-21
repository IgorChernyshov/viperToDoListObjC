//
//  TDLPresenter.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TDLOutputProtocol.h"
#import "TDLViewEventHandlerProtocol.h"
#import "TDLToDoItemsProviderProtocol.h"
#import "TDLViewProtocol.h"


NS_ASSUME_NONNULL_BEGIN


@interface TDLPresenter : NSObject <TDLOutputProtocol, TDLViewEventHandlerProtocol>

@property (nonatomic, weak) id<TDLViewProtocol> view;
@property (nonatomic, strong) id<TDLToDoItemsProviderProtocol> todoItemsProvider;

@end

NS_ASSUME_NONNULL_END
