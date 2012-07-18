//
//  YuebaPubOpenerMessageCell.h
//  Yueba
//
//  Created by gg iyak on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaPubOpenerMessageCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *message;
@property (strong, nonatomic) IBOutlet UILabel *replyCount;
@property (strong, nonatomic) IBOutlet UILabel *time;

@end
