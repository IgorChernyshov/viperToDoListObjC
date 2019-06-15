//
//  AppDelegate.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 12/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "AppDelegate.h"
#import "ToDoListModuleBuilder.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	ToDoListModuleBuilder *builder = [ToDoListModuleBuilder new];
	CGRect screenSize = [[UIScreen mainScreen] bounds];
	self.window = [[UIWindow alloc] initWithFrame:screenSize];
	self.window.rootViewController = [builder buildToDoListModule];
	[self.window makeKeyAndVisible];
	return YES;
}

@end
