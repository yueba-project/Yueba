//
//  YuebaMessageDetailViewController.h
//  Yueba
//
//  Created by gg iyak on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaMessageDetailViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *table;
@property (strong, nonatomic) NSArray *openerInfo;
@property (strong, nonatomic) NSArray *replyHeads;
@property (strong, nonatomic) NSArray *replyNames;
@property (strong, nonatomic) NSArray *replyAges;
@property (strong, nonatomic) NSArray *replyGenders;
@property (strong, nonatomic) NSArray *replyStatus;
@property (strong, nonatomic) NSArray *replyMessages;
@property (strong, nonatomic) NSArray *replyTimes;

- (id)createOpenerInfoCell:(int)index tableView:(UITableView *)tableView;
- (id)createOpenerMessageCell:(int)index tableView:(UITableView *)tableView;
- (id)createReplyCell:(int)index tableView:(UITableView *)tableView;

@end
