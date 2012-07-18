//
//  YuebaPubSubWallViewController.h
//  Yueba
//
//  Created by gg iyak on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaPubSubWallViewController : UITableViewController

@property (strong, nonatomic) UIViewController *owner;
@property (strong, nonatomic) NSArray *heads;
@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSArray *genders;
@property (strong, nonatomic) NSArray *times;
@property (strong, nonatomic) NSArray *messages;
@property (strong, nonatomic) NSArray *replyCounts;

@end
