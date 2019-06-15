//
//  ToDoItem.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 12/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface ToDoItem : NSObject

- (instancetype)initWithTitle:(NSString *)title content:(NSString *)content;

@end

NS_ASSUME_NONNULL_END
