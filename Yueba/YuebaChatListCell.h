//
//  YuebaChatListCell.h
//  Yueba
//
//  Created by abel on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaChatListCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *userImageView;
@property (strong, nonatomic) IBOutlet UILabel *userNameView;
@property (strong, nonatomic) IBOutlet UILabel *lastChatView;

@end
