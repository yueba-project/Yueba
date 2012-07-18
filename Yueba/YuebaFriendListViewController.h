//
//  YuebaFriendListViewController.h
//  Yueba
//
//  Created by abel on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaFriendListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(strong,nonatomic) UIImage *userImage;
@property(strong,nonatomic) NSString *userName;
@property(strong,nonatomic) NSString *userAge;
@property(strong,nonatomic) UIImage *userSexImage;
@property(strong,nonatomic) NSString *distance;
@property(strong,nonatomic) NSString *online;

@property(strong,nonatomic) NSArray *userImages;
@property(strong,nonatomic) NSArray *userNames;
@property(strong,nonatomic) NSArray *userAges;
@property(strong,nonatomic) NSArray *userSexImages;
@property(strong,nonatomic) NSArray *distances;
@property(strong,nonatomic) NSArray *onlines;

@property(strong,nonatomic) UIViewController *owner;

@end
