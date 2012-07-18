//
//  YuebaPubDetailViewController.m
//  Yueba
//
//  Created by gg iyak on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubDetailViewController.h"
#import "YuebaMessageDetailViewController.h"

@interface YuebaPubDetailViewController ()

@end

@implementation YuebaPubDetailViewController

@synthesize subView = _subView;
@synthesize selector = _selector;
@synthesize addMessage = _addMessage;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"SegueToMessageDetail"]) {
        YuebaPubSubWallViewController *wall = sender;
        YuebaMessageDetailViewController *detail = [segue destinationViewController];
        NSIndexPath *path = [wall.tableView indexPathForSelectedRow];
        NSArray *openerInfo = [[NSArray alloc] initWithObjects:[wall.heads objectAtIndex:[path row]], [wall.names objectAtIndex:[path row]], @"18", [wall.genders objectAtIndex:[path row]], @"已签到", [wall.messages objectAtIndex:[path row]], [wall.replyCounts objectAtIndex:[path row]], [wall.times objectAtIndex:[path row]], nil];
        detail.openerInfo = openerInfo;
        if ([path row] == 0) {
            detail.replyHeads = [[NSArray alloc] initWithObjects:@"tiny_ea5I_4058o198107.jpg", @"tiny_wbvb_9618m019117.jpg", nil];
            detail.replyNames = [[NSArray alloc] initWithObjects:@"王小明", @"赵小华", nil];
            detail.replyAges = [[NSArray alloc] initWithObjects:@"35", @"78", nil];
            detail.replyGenders = [[NSArray alloc] initWithObjects:@"gender_icon_male.gif", @"gender_icon_male.gif", nil];
            detail.replyStatus = [[NSArray alloc] initWithObjects:@"已签到", @"未签到", nil];
            detail.replyMessages = [[NSArray alloc] initWithObjects:@"马上来", @"妹纸不错", nil];
            detail.replyTimes = [[NSArray alloc] initWithObjects:@"5秒前", @"12秒前", nil];
        } else {
            detail.replyHeads = nil;
            detail.replyNames = nil;
            detail.replyAges = nil;
            detail.replyGenders = nil;
            detail.replyStatus = nil;
            detail.replyMessages = nil;
            detail.replyTimes = nil;
        }
    }
}

- (void)changeView:(id)sender
{
    switch (self.selector.selectedSegmentIndex) {
        case 0:
            if (wallSubView == nil) {
                wallSubView = [[YuebaPubSubWallViewController alloc] initWithNibName:NSStringFromClass([YuebaPubSubWallViewController class]) bundle:nil];
                wallSubView.owner = self;
                [self.subView addSubview:wallSubView.view];
            }
            [self.addMessage setHidden:NO];
            [self.subView bringSubviewToFront:wallSubView.view];
            break;
        case 1:
            if (friendSubView == nil) {
                friendSubView = [[YuebaPubSubFriendViewController alloc] initWithNibName:NSStringFromClass([YuebaPubSubFriendViewController class]) bundle:nil];
                [self.subView addSubview:friendSubView.view];
            }
            [self.addMessage setHidden:YES];
            [self.subView bringSubviewToFront:friendSubView.view];
            break;
        default:
            break;
    }
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
    friendSubView = [[YuebaPubSubFriendViewController alloc] initWithNibName:NSStringFromClass([YuebaPubSubFriendViewController class]) bundle:nil];
    [self.addMessage setHidden:YES];
    [self.subView addSubview:friendSubView.view];
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
