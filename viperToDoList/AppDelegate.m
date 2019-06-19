//
//  AppDelegate.m
//  viperToDoList
//
//  Created by Igor Chernyshov on 12/06/2019.
//  Copyright © 2019 Igor Chernyshov. All rights reserved.
//

#import "AppDelegate.h"
#import "TDLFlowBuilder.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	CGRect screenSize = [[UIScreen mainScreen] bounds];
	self.window = [[UIWindow alloc] initWithFrame:screenSize];
	
	TDLFlowBuilder *builder = [TDLFlowBuilder new];
	self.window.rootViewController = [builder buildToDoListFlow];
	
	[self.window makeKeyAndVisible];
	return YES;
}

@end
