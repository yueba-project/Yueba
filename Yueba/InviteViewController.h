//
//  InviteViewController.h
//  Yueba
//
//  Created by Siying Wu on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AcceptTableViewController.h"
#import "InviteTableViewController.h"

@interface InviteViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    AcceptTableViewController *acceptController;
    InviteTableViewController *inviteController;
    
}


@property (nonatomic,strong) IBOutlet UIView *subView;
@property (nonatomic,strong) IBOutlet UISegmentedControl *segmentedControl;
- (IBAction)shiftSegmentedCrtl:(id)sender;
- (IBAction)showFilter:(id)sender;
@end
