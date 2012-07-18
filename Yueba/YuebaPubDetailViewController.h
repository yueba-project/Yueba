//
//  YuebaPubDetailViewController.h
//  Yueba
//
//  Created by gg iyak on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YuebaPubSubFriendViewController.h"
#import "YuebaPubSubWallViewController.h"

@interface YuebaPubDetailViewController : UIViewController
{
    YuebaPubSubFriendViewController *friendSubView;
    YuebaPubSubWallViewController *wallSubView;
}

@property (strong, nonatomic) IBOutlet UIView *subView;
@property (strong, nonatomic) IBOutlet UISegmentedControl *selector;
@property (strong, nonatomic) IBOutlet UIButton *addMessage;

- (IBAction)changeView :(id)sender;

@end
