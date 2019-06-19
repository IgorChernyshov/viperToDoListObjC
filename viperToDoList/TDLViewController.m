//
//  TDLViewController.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 15/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "TDLViewController.h"


@interface TDLViewController()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray<NSString *> *todos;

@end


@implementation TDLViewController


#pragma mark - View Controller's Lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	[self configureUI];
	[self.eventHandler loadToDoItems];
}


#pragma mark - Configure UI

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
	cell.textLabel.text = self.todos[indexPath.row];
	return cell;
}


#pragma mark - ToDoListViewProtocol

- (void)showTodos:(NSArray<NSString *> *)todos
{
	self.todos = [NSArray arrayWithArray:todos];
	[self.tableView reloadData];
}

@end
