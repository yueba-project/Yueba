//
//  YuebaPubListViewController.m
//  Yueba
//
//  Created by gg iyak on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubListViewController.h"
#import "YuebaPubListTableViewCell.h"

@interface YuebaPubListViewController ()

@end

@implementation YuebaPubListViewController

@synthesize pubListTable = _pubListTable;
@synthesize pubIcons = _pubIcons;
@synthesize pubNames = _pubNames;
@synthesize pubDistances = _pubDistances;
@synthesize pubPopularities = _pubPopularities;

-(void)showFilter:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:NSLocalizedString(@"pubListFilterButton1", nil),  NSLocalizedString(@"pubListFilterButton2", nil),nil];
    [alert show];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PubListCell";
    YuebaPubListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[YuebaPubListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    UIImage *image = [UIImage imageNamed:[self.pubIcons objectAtIndex:indexPath.row]];
    cell.pubIcon.image = image;
    cell.pubName.text = [self.pubNames objectAtIndex:indexPath.row];
    cell.pubDistance.text = [self.pubDistances objectAtIndex:indexPath.row];
    cell.pubPopularity.text = [self.pubPopularities objectAtIndex:indexPath.row];
    return cell;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.pubIcons = [[NSArray alloc] initWithObjects:@"bar1.png", nil];
    self.pubNames = [[NSArray alloc] initWithObjects:@"丽莉马莲", nil];
    self.pubDistances = [[NSArray alloc] initWithObjects:@"120m", nil];
    self.pubPopularities = [[NSArray alloc] initWithObjects:@"130人", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
