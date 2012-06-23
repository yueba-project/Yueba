//
//  YuebaPubListTableViewCell.h
//  Yueba
//
//  Created by gg iyak on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaPubListTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *pubIcon;
@property (strong, nonatomic) IBOutlet UILabel *pubName;
@property (strong, nonatomic) IBOutlet UILabel *pubDistance;
@property (strong, nonatomic) IBOutlet UILabel *pubPopularity;

@end
