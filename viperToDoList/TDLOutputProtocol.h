//
//  TDLOutputProtocol.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TDLToDoItem;


NS_ASSUME_NONNULL_BEGIN


@protocol TDLOutputProtocol <NSObject>

- (void)receiveToDoItems:(NSArray<TDLToDoItem *> *)todos;

@end

NS_ASSUME_NONNULL_END
