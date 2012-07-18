//
//  YuebaFriendChatViewController.m
//  Yueba
//
//  Created by abel on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaFriendChatViewController.h"

@interface YuebaFriendChatViewController ()

@end

@implementation YuebaFriendChatViewController

@synthesize chooser = _chooser;
@synthesize subView = _subview;

- (void)chooserth:(id)sender
{
    switch (self.chooser.selectedSegmentIndex) {
        case 0:
            if (chatController == nil) {
                chatController = [[YuebaChatListViewController alloc] initWithNibName:NSStringFromClass([YuebaChatListViewController class]) bundle:nil];
                chatController.chatView = self;
                [self.subView addSubview:chatController.view];
            }
            [self.subView bringSubviewToFront:chatController.view];
            break;
            
        case 1:
            if (friendController == nil) {
                friendController = [[YuebaFriendListViewController alloc] initWithNibName:NSStringFromClass([YuebaFriendListViewController class]) bundle:nil];
                friendController.owner = self;
                [self.subView addSubview:friendController.view];
            }
            [self.subView bringSubviewToFront:friendController.view];
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
    chatController = [[YuebaChatListViewController alloc] initWithNibName:NSStringFromClass([YuebaChatListViewController class]) bundle:nil];
    chatController.chatView = self;
    [self.subView addSubview:chatController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    chatController = nil;
    friendController = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
