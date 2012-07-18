//
//  YuebaFriendChatViewController.h
//  Yueba
//
//  Created by abel on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YuebaFriendListViewController.h"
#import "YuebaChatListViewController.h"

@interface YuebaFriendChatViewController : UIViewController
{
    YuebaFriendListViewController *friendController;
    YuebaChatListViewController *chatController;
}

@property (strong,nonatomic) IBOutlet UISegmentedControl *chooser;
@property (strong,nonatomic) IBOutlet UIView *subView;

- (IBAction)chooserth:(id)sender;

@end
