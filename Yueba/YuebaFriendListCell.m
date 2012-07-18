//
//  YuebaFriendListCell.m
//  Yueba
//
//  Created by abel on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaFriendListCell.h"

@implementation YuebaFriendListCell

@synthesize userImageView = _userImageView;
@synthesize userNameView = _userNameView;
@synthesize userAgeView = _userAgeView;
@synthesize userSexImageView = _userSexImageView;
@synthesize distanceView = _distanceView;
@synthesize onlineView = _onlineView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
