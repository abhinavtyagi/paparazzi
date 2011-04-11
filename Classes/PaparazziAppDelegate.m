//
//  PaparazziAppDelegate.m
//  Paparazzi
//
//  Created by Manoj Sharma on 4/1/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "PaparazziAppDelegate.h"
#import "MainCategoryViewController.h"

@implementation PaparazziAppDelegate

@synthesize window;
@synthesize tabController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	tabController = [[UITabBarController alloc] init];
	
	UINavigationController *navController = [[UINavigationController alloc] init];
	MainCategoryViewController * mainCatVC = [[MainCategoryViewController alloc] init];
	[navController pushViewController:mainCatVC animated:NO];
	[mainCatVC setTitle:@"Contacts"];

	UINavigationController * navController2 = [[UINavigationController alloc] init];
	MainCategoryViewController * mainCatVC2 = [[MainCategoryViewController alloc] init];
	[navController2 pushViewController:mainCatVC2 animated:NO];
	[mainCatVC2 setTitle:@"Contacts2"];
	tabController.viewControllers = [[NSArray arrayWithObjects:navController, navController2, nil] retain];
	[window addSubview:tabController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	//[navController release];
	[tabController release];
    [window release];
    [super dealloc];
}


@end
