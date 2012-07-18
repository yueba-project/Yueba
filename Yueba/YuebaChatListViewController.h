//
//  YuebaChatListViewController.h
//  Yueba
//
//  Created by abel on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatViewController.h"

@interface YuebaChatListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(strong,nonatomic) UIImage *userImage;
@property(strong,nonatomic) NSString *userName;
@property(strong,nonatomic) NSString *lastChat;

@property(strong,nonatomic) NSArray *userImages;
@property(strong,nonatomic) NSArray *userNames;
@property(strong,nonatomic) NSArray *lastChates;

//@property(strong,nonatomic) UIViewController *chatViewController;
//@property(strong,nonatomic) ChatViewController *viewController;
@property(strong,nonatomic) UIViewController *chatView;

@end