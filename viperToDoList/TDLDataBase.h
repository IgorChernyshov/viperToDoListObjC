//
//  TDLDataBase.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TDLToDoItem;


NS_ASSUME_NONNULL_BEGIN


@interface TDLDataBase : NSObject

- (NSArray<TDLToDoItem *> *)loadAllTodos;

@end

NS_ASSUME_NONNULL_END
