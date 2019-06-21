//
//  TDLInteractor.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 13/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TDLToDoItemsProviderProtocol.h"
#import "TDLOutputProtocol.h"
@class TDLDataBase;


NS_ASSUME_NONNULL_BEGIN


@interface TDLInteractor : NSObject <TDLToDoItemsProviderProtocol>

@property (nonatomic, weak) id<TDLOutputProtocol> output;

- (instancetype)initWithDataBase:(TDLDataBase *)dataBase;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
