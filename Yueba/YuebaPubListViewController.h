//
//  YuebaPubListViewController.h
//  Yueba
//
//  Created by gg iyak on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaPubListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *pubListTable;

@property (strong, nonatomic) NSArray *pubIcons;
@property (strong, nonatomic) NSArray *pubNames;
@property (strong, nonatomic) NSArray *pubDistances;
@property (strong, nonatomic) NSArray *pubPopularities;

- (IBAction)showFilter:(id)sender;

@end
