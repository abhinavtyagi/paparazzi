//
//  FullScreenPhotoViewController.h
//  Paparazzi
//
//  Created by Manoj Sharma on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FullScreenPhotoViewController : UIViewController {
    IBOutlet UIImageView *m_imageView;
	UIImage * m_image;
}
@property (assign) UIImage * m_image;
@property (assign) UIImageView *m_imageView;
-(id) initWithUIImage: (UIImage *) aImage;
@end
