//
//  YuebaPubSubFriendCell.m
//  Yueba
//
//  Created by gg iyak on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubSubFriendCell.h"

@implementation YuebaPubSubFriendCell

@synthesize head = _head;
@synthesize name = _name;
@synthesize gender = _gender;
@synthesize time = _time;
@synthesize message = _message;
@synthesize replyCount = _replyCount;

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
