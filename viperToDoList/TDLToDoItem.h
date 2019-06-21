//
//  TDLToDoItem.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 12/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN


@interface TDLToDoItem : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *content;

- (instancetype)initWithTitle:(NSString *)title content:(NSString *)content;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
