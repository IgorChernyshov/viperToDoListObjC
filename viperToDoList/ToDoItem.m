//
//  ToDoItem.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 12/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoItem.h"


@interface ToDoItem()

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *content;

@end

@implementation ToDoItem

- (instancetype)initWithTitle:(NSString *)title content:(NSString *)content
{
	self = [super init];
	if (self) {
		_title = title;
		_content = content;
	}
	return self;
}

@end
