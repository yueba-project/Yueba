//
//  YuebaPubReplyCell.m
//  Yueba
//
//  Created by gg iyak on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubReplyCell.h"

@implementation YuebaPubReplyCell

@synthesize head = _head;
@synthesize name = _name;
@synthesize age = _age;
@synthesize gender = _gender;
@synthesize status = _status;
@synthesize message = _message;
@synthesize time = _time;

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
