//
//  TableCellData.m
//  Paparazzi
//
//  Created by Manoj Sharma on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TableCellData.h"


@implementation TableCellData

#pragma mark property synthesizers
@synthesize m_strText, m_image;

#pragma mark -
#pragma mark general overrides
- (void) dealloc
{
	NSLog(@"TableCellData deallocated");
	[m_image release];
	[m_strText release];
	m_image = nil;
	m_strText = nil;
	[super dealloc];
}


- (id) initWithUIImage: (UIImage *) aImage andText:(NSString *) aText
{
	if( self = [super init] ){
		m_image = aImage;
		m_strText = aText;
	}
	return self;	
}

+ (id) cellWithUIImage: (UIImage *) aImage andText:(NSString *) aText
{
	TableCellData * autoreleasedCell = [[TableCellData alloc] initWithUIImage:aImage andText:aText];
	return autoreleasedCell;
}
@end
