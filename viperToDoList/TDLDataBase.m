//
//  TDLDataBase.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "TDLDataBase.h"
#import "TDLToDoItem.h"


@interface TDLDataBase()

@property (nonatomic, copy) NSArray<TDLToDoItem *> *data;

@end


@implementation TDLDataBase

- (instancetype)init
{
	if (self = [super init])
	{
		TDLToDoItem *firstItem = [[TDLToDoItem alloc] initWithTitle:@"Insurance" content:@"Purchase car insurance"];
		TDLToDoItem *secondItem = [[TDLToDoItem alloc] initWithTitle:@"Mortage" content:@"Pay for mortage"];
		TDLToDoItem *thirdItem = [[TDLToDoItem alloc] initWithTitle:@"Tax refund" content:@"Issue a tax refund"];
		TDLToDoItem *fourthItem = [[TDLToDoItem alloc] initWithTitle:@"Clean room" content:@"Clean my room"];
		TDLToDoItem *fifthItem = [[TDLToDoItem alloc] initWithTitle:@"Do homework" content:@"Finish VIPER project"];
		_data = @[firstItem, secondItem, thirdItem, fourthItem, fifthItem];
	}
	return self;
}

- (NSArray<TDLToDoItem *> *)loadAllTodos
{
	return self.data;
}

@end
