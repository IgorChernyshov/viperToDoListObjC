//
//  ToDoListDataBase.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoListDataBase.h"


@interface ToDoListDataBase()

@property (nonatomic, strong) NSArray<ToDoItem *> *data;

@end


@implementation ToDoListDataBase

+ (instancetype)sharedInstance
{
	static ToDoListDataBase *sharedInstance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedInstance = [[self alloc] init];
	});
	return sharedInstance;
}

- (id)init
{
	if (self = [super init])
	{
		ToDoItem *firstItem = [[ToDoItem alloc] initWithTitle:@"Insurance" content:@"Purchase car insurance"];
		ToDoItem *secondItem = [[ToDoItem alloc] initWithTitle:@"Mortage" content:@"Pay for mortage"];
		ToDoItem *thirdItem = [[ToDoItem alloc] initWithTitle:@"Tax refund" content:@"Issue a tax refund"];
		ToDoItem *fourthItem = [[ToDoItem alloc] initWithTitle:@"Clean room" content:@"Clean my room"];
		ToDoItem *fifthItem = [[ToDoItem alloc] initWithTitle:@"Do homework" content:@"Finish VIPER project"];
		_data = @[firstItem, secondItem, thirdItem, fourthItem, fifthItem];
	}
	return self;
}

- (NSArray<ToDoItem *> *)loadAllTodos
{
	return self.data;
}

@end
