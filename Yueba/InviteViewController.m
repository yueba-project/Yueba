//
//  InviteViewController.m
//  Yueba
//
//  Created by Siying Wu on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "InviteViewController.h"
#import "InviteCell.h"

@interface InviteViewController ()

@end

@implementation InviteViewController


@synthesize subView = _subView;
@synthesize segmentedControl = _segmentedControl;

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
	//[self fillArrayAccept];
    acceptController = [[AcceptTableViewController alloc] initWithNibName:NSStringFromClass([AcceptTableViewController class]) bundle:nil];
    [self.subView addSubview:acceptController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    inviteController = nil;
    acceptController = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"inviteCell";
    
    InviteCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[InviteCell alloc]
                initWithStyle:UITableViewCellStyleDefault 
                reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...

    
    
    return cell;
}
- (id) fillArrayInvite{
    
    return nil;
    
}

- (IBAction)shiftSegmentedCrtl:(id)sender{
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 1:
            if (inviteController == nil) {
                inviteController = [[InviteTableViewController alloc] initWithNibName:NSStringFromClass([InviteTableViewController class]) bundle:nil];
                inviteController.owner = self;
                [self.subView addSubview:inviteController.view];
            }
            [self.subView bringSubviewToFront:inviteController.view];
            break;
        case 0:
            if (acceptController == nil) {
                acceptController = [[AcceptTableViewController alloc] initWithNibName:NSStringFromClass([AcceptTableViewController class]) bundle:nil];
                acceptController.owner = self;
                [self.subView addSubview:acceptController.view];
            }
            [self.subView bringSubviewToFront:acceptController.view];
            break;
        default:
            break;
    }
}
- (IBAction)showFilter:(id)sender{
    UIAlertView *filterAlert = [[UIAlertView alloc] initWithTitle:nil message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"只选男",@"只选女",@"全部", nil];
    [filterAlert show];
}
@end
