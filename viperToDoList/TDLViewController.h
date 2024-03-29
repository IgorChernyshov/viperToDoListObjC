//
//  TDLViewController.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDLViewProtocol.h"
#import "TDLViewEventHandlerProtocol.h"


NS_ASSUME_NONNULL_BEGIN


@interface TDLViewController : UIViewController <TDLViewProtocol, UITableViewDataSource>

@property (nonatomic, strong) id<TDLViewEventHandlerProtocol> eventHandler;

@end

NS_ASSUME_NONNULL_END
