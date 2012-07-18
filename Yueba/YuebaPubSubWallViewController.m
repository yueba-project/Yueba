//
//  YuebaPubSubWallViewController.m
//  Yueba
//
//  Created by gg iyak on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubSubWallViewController.h"
#import "YuebaPubSubFriendCell.h"

@interface YuebaPubSubWallViewController ()

@end

@implementation YuebaPubSubWallViewController

@synthesize heads = _heads;
@synthesize names = _names;
@synthesize genders = _genders;
@synthesize times = _times;
@synthesize messages = _messages;
@synthesize replyCounts = _replyCounts;
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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.heads = [[NSArray alloc] initWithObjects:@"tiny_ghNQ_225277k019118.jpg", @"tiny_Gn1t_217699j019118.jpg", nil];
    self.names = [[NSArray alloc] initWithObjects:@"王小丽", @"李小红", nil];
    self.genders = [[NSArray alloc] initWithObjects:@"gender_icon_female.gif", @"gender_icon_female.gif", nil];
    self.times = [[NSArray alloc] initWithObjects:@"1分钟前", @"12小时前", nil];
    self.messages = [[NSArray alloc] initWithObjects:@"大哥，来一发不？", @"求包养", nil];
    self.replyCounts = [[NSArray alloc] initWithObjects:@"2条回复", @"0条回复", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PubSubFriendCell";
        
    static BOOL Regiested = NO;
    if (!Regiested) {
        UINib *tableNib = [UINib nibWithNibName:NSStringFromClass([YuebaPubSubFriendCell class]) bundle:nil];
        [tableView registerNib:tableNib forCellReuseIdentifier:CellIdentifier];
        Regiested = YES;
    }
    
    YuebaPubSubFriendCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[YuebaPubSubFriendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    UIImage *imageHead = [UIImage imageNamed:[self.heads objectAtIndex:[indexPath row]]];
    cell.head.image = imageHead;
    cell.name.text = [self.names objectAtIndex:[indexPath row]];
    UIImage *imageGender = [UIImage imageNamed:[self.genders objectAtIndex:[indexPath row]]];
    cell.gender.image = imageGender;
    cell.time.text = [self.times objectAtIndex:[indexPath row]];
    cell.message.text = [self.messages objectAtIndex:[indexPath row]];
    cell.replyCount.text = [self.replyCounts objectAtIndex:[indexPath row]];
    
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    [self.owner performSegueWithIdentifier:@"SegueToMessageDetail" sender:self];
}

@end
