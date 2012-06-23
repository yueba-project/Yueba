//
//  YuebaPubListTableViewCell.m
//  Yueba
//
//  Created by gg iyak on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaPubListTableViewCell.h"

@implementation YuebaPubListTableViewCell

@synthesize pubIcon = _pubIcon;
@synthesize pubName = _pubName;
@synthesize pubDistance = _pubDistance;
@synthesize pubPopularity = _pubPopularity;

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
