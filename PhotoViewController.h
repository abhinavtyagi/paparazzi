//
//  PhotoViewController.h
//  Paparazzi
//
//  Created by Manoj Sharma on 4/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate> {
	IBOutlet UITableView * m_tableViewOutlet;
	NSArray *m_cellObjectsArray;
}
//- (IBAction)pushMyselfAction:(id)sender;
@property (retain, nonatomic) NSArray * m_cellObjectsArray;
@property (retain, nonatomic) UITableView * m_tableViewOutlet;
- (UIImage *) selfScaleUIImage: (UIImage *) aSrcImage scaledWidth:(float) aWidth andHeight:(float) aHeight;
+ (NSArray *) cellObjectsArrayWithImageNamesArray: (NSArray *) aNamesArray;
@end
