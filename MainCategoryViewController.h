//
//  MainCategoryViewController.h
//  Paparazzi
//
//  Created by Manoj Sharma on 4/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoViewController.h"

@interface MainCategoryViewController : UIViewController {
	PhotoViewController * photoController;
}
- (IBAction)showFlowerAction:(id)sender;
- (IBAction)showLandscape:(id)sender;
- (IBAction)showPlanets:(id)sender;

@end
