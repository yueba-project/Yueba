//
//  InviteTableViewController.h
//  Yueba
//
//  Created by Siying Wu on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InviteTableViewController : UITableViewController
@property (nonatomic,strong) NSArray *nameArray;
@property (nonatomic,strong) NSArray *distanceArray;
@property (nonatomic,strong) NSArray *statusArray;

@property (nonatomic,strong) UIViewController *owner;
@end
