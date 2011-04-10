//
//  PaparazziAppDelegate.h
//  Paparazzi
//
//  Created by Manoj Sharma on 4/1/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaparazziAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController * navController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

