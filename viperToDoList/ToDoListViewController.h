//
//  ToDoListViewController.h
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoListViewProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoListViewController : UIViewController <ToDoListViewProtocol, UITableViewDataSource>

@end

NS_ASSUME_NONNULL_END
