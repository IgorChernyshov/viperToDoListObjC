//
//  ToDoListViewController.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "ToDoListViewController.h"
#import "ToDoListViewEventHandlerProtocol.h"

@interface ToDoListViewController()

@property (nonatomic, weak) id<ToDoListViewEventHandlerProtocol> eventHandler;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray<NSString *> *todos;

@end

@implementation ToDoListViewController

- (void)viewDidLoad
{
	self.todos = [NSArray new];
	[self configureUI];
	[self.eventHandler loadToDoItems];
}

- (void)configureUI
{
	self.view.backgroundColor = [UIColor whiteColor];
	
	self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuseID"];
	self.tableView.dataSource = self;
	[self.view addSubview:self.tableView];
}


#pragma mark - TableViewDataSourceProtocol

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.todos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseID"];
	cell.textLabel.text = @"Test";
	return cell;
}


#pragma mark - ToDoListViewProtocol

- (void)showTodos:(NSArray<NSString *> *)todos
{
	self.todos = todos;
	[self.tableView reloadData];
}

@end
