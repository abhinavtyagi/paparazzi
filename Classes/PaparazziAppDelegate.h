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
	UITabBarController * tabController;
}
@property (retain, nonatomic) UITabBarController * tabController;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


