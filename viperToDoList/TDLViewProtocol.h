//
//  TDLViewProtocol.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@protocol TDLViewProtocol <NSObject>

- (void)showTodos:(NSArray<NSString *> *)todos;

@end

NS_ASSUME_NONNULL_END
