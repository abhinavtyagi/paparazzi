//
//  TableCellData.h
//  Paparazzi
//
//  Created by Manoj Sharma on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TableCellData : NSObject {
	UIImage * m_image;
	NSString * m_strText;
}

@property (copy, nonatomic) UIImage * m_image;
@property (copy, nonatomic) NSString * m_strText;

- (id) initWithUIImage: (UIImage *) aImage andText:(NSString *) aText;
+ (id) cellWithUIImage: (UIImage *) aImage andText:(NSString *) aText;
@end
