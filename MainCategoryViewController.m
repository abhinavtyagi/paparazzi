//
//  MainCategoryViewController.m
//  Paparazzi
//
//  Created by Manoj Sharma on 4/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainCategoryViewController.h"
#import "PhotoViewController.h"

@implementation MainCategoryViewController
- (IBAction)showFlowerAction:(id)sender {
	NSArray *flowerNamesArray = [NSArray arrayWithObjects:@"F1.jpg",@"F2.jpg",@"F3.jpg",@"F_ICON.jpg",@"F5.jpg",@"F6.jpg",nil];
    PhotoViewController *flowerView = [[PhotoViewController alloc] init];
	flowerView.m_cellObjectsArray = [PhotoViewController cellObjectsArrayWithImageNamesArray:flowerNamesArray];
	[self.navigationController pushViewController:flowerView animated:YES];
	[flowerView setTitle:@"Flowers"];
	[flowerView release];
}

- (IBAction)showLandscape:(id)sender {
	NSArray *landscapeNamesArray = [NSArray arrayWithObjects:@"L1.jpg",@"L2.jpg",@"L3.jpg",@"L4.jpg",@"L5.jpg",
									@"L6.jpg",@"L7.jpg",@"L8.jpg",nil];
    PhotoViewController *landscapeView = [[PhotoViewController alloc] init];
	landscapeView.m_cellObjectsArray = [PhotoViewController cellObjectsArrayWithImageNamesArray:landscapeNamesArray];
	[landscapeView setTitle:@"Landscapes"];
	[self.navigationController pushViewController:landscapeView animated:YES];
	[landscapeView release];
}

- (IBAction)showPlanets:(id)sender {
	NSArray * planetsNamesArray = [NSArray arrayWithObjects:@"P1.jpg", @"P2.jpg", nil];
    PhotoViewController *planetView = [[PhotoViewController alloc] init];
	planetView.m_cellObjectsArray = [PhotoViewController cellObjectsArrayWithImageNamesArray:planetsNamesArray];
	planetView.title = @"Planets";
	[self.navigationController pushViewController:planetView animated:YES];
	[planetView release];
}
/*
 - (IBAction)onPushAnotherView:(id)sender {
	photoController = [[PhotoViewController alloc] init];
	[photoController setTitle:@"2"];
	[self.navigationController pushViewController:photoController animated:YES];
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
	[photoController release];
	NSLog(@"contactsview unloaded");
}


- (void)dealloc {
	[photoController release];
	
    [super dealloc];
	NSLog(@"Dealloc on ContactsVC");
}


@end
