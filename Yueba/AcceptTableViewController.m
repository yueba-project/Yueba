//
//  AcceptTableViewController.m
//  Yueba
//
//  Created by Siying Wu on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AcceptTableViewController.h"
#import "DateNearbyCell.h"

@interface AcceptTableViewController ()

@end

@implementation AcceptTableViewController
@synthesize nameArray = _nameArray;
@synthesize ageArray = _ageArray;
@synthesize statusArray = _statusArray;
@synthesize distanceArray = _distanceArray;
@synthesize owner = _owner;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self fillArrays];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.nameArray = nil;
    self.ageArray = nil;
    self.distanceArray = nil;
    self.statusArray = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.nameArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DateNearbyCell";

    static BOOL nibsRegistered = NO;
    if(!nibsRegistered)
    {
        UINib *nib=[UINib nibWithNibName:NSStringFromClass([DateNearbyCell class]) bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellIdentifier];
        nibsRegistered=YES;
    }
    DateNearbyCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[DateNearbyCell alloc]
                initWithStyle:UITableViewCellStyleDefault 
                reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    cell.labelName.text = [self.nameArray 
                           objectAtIndex: [indexPath row]];
    cell.labelAge.text = [self.ageArray objectAtIndex:[indexPath row]];
    cell.labelStatus.text = [self.statusArray 
                             objectAtIndex: [indexPath row]];
    cell.labelDistance.text = [self.distanceArray 
                               objectAtIndex: [indexPath row]];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


-(id) fillArrays{
    self.nameArray = [[NSArray alloc] initWithObjects:@"Mary",@"Lee",@"Abel", nil];
    self.ageArray = [[NSArray alloc] initWithObjects:@"18", @"19", @"20", nil];
    self.statusArray = [[NSArray alloc] initWithObjects:@"15 min ago",@"online",@"1 hour ago", nil];
    self.distanceArray = [[NSArray alloc] initWithObjects:@"1KM",@"200M",@"1M", nil];
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.owner performSegueWithIdentifier:@"segueAccept" sender:self];
}
@end
