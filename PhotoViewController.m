//
//  PhotoViewController.m
//  Paparazzi
//
//  Created by Manoj Sharma on 4/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PhotoViewController.h"
#import "TableCellData.h"
#import "FullScreenPhotoViewController.h"

@implementation PhotoViewController
/*
 - (IBAction)pushMyselfAction:(id)sender {
    PhotoViewController *newPVC = [PhotoViewController new];
	[self.navigationController pushViewController:newPVC animated:YES];
	[newPVC release];
}
*/

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	NSLog(@"Vie Unloaded PhotoVC");
}
- (void)viewDidLoad
{
	[self.navigationController setDelegate:self];
}

- (void)dealloc {
	[m_cellObjectsArray release];
	m_cellObjectsArray = nil;
    [super dealloc];
	NSLog(@"Dealloc on PVC");
}

#pragma mark -
#pragma mark TableView Methods implementation
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	NSInteger result=[self.m_cellObjectsArray count];
	return result;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell * theCell = [[UITableViewCell alloc] init];
	TableCellData *cellData = [self.m_cellObjectsArray objectAtIndex:[indexPath row]];
	UIImage *cellImg = [self selfScaleUIImage:cellData.m_image scaledWidth:32 andHeight:32];
	theCell.image = cellImg;//cellData.m_image;
	theCell.text = cellData.m_strText;
	return theCell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return [NSString stringWithString:@"Header Title"];
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	int nIndex = [indexPath row];
	TableCellData * tableCell = [self.m_cellObjectsArray objectAtIndex:nIndex];
	FullScreenPhotoViewController * fullPhotoView = [[FullScreenPhotoViewController alloc] initWithUIImage:tableCell.m_image];
	fullPhotoView.m_imageView.image = fullPhotoView.m_image;
	//fullPhotoView.m_imageView.image.size = CGSizeMake(400,500);
	[self.navigationController pushViewController:fullPhotoView animated:YES];
	[fullPhotoView release];
	return indexPath;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"selected status:sel, hil: %d, %d", cell.selected, cell.highlighted);
	[cell setHighlighted:NO animated:NO];
	[cell setSelected:NO animated:NO];
}

#pragma mark -
#pragma mark nav controller del implementation
/*
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
	NSLog(@"Nav Controller abt to show!");
	[self.m_tableViewOutlet reloadData];
}
*/
#pragma mark -
#pragma mark Other methods
- (UIImage *) selfScaleUIImage: (UIImage *) aSrcImage scaledWidth:(float) aWidth andHeight:(float) aHeight
{
	CGImageRef cgSrcImgRef = aSrcImage.CGImage;
	CGContextRef imageContext = CGBitmapContextCreate(NULL, aWidth, aHeight, CGImageGetBitsPerComponent(cgSrcImgRef), 0, CGImageGetColorSpace(cgSrcImgRef), CGImageGetBitmapInfo(cgSrcImgRef) );
	CGRect destRect = CGRectMake(0, 0, aWidth, aHeight);
	CGContextDrawImage(imageContext, destRect, cgSrcImgRef);
	CGImageRef resizedCGImage = CGBitmapContextCreateImage(imageContext);
	UIImage * destImage = [UIImage imageWithCGImage:resizedCGImage];
	return destImage;
}
+ (NSArray *) cellObjectsArrayWithImageNamesArray: (NSArray *) aNamesArray
{
	NSMutableArray * resultArray = [[[NSMutableArray alloc] initWithCapacity:0] autorelease];
	int maxIndex = [aNamesArray count];
	TableCellData * cellData = nil;
	UIImage * cellImg = nil;
	NSString * cellText = nil;
	for( int nIndex = 0; nIndex < maxIndex; nIndex++){
		cellText = [aNamesArray objectAtIndex:nIndex];
		cellImg = [UIImage imageNamed:cellText];
		cellData = [[[TableCellData alloc] initWithUIImage:cellImg andText:cellText] autorelease];
		[resultArray insertObject:cellData atIndex:nIndex];
	 }
	return resultArray;
}
@synthesize m_cellObjectsArray;
@synthesize m_tableViewOutlet;
@end
