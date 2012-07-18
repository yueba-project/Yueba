//
//  InviteCell.m
//  Yueba
//
//  Created by Siying Wu on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "InviteCell.h"

@implementation InviteCell
@synthesize labelName = _lableName;
@synthesize labelAge = _labelAge;
@synthesize labelStatus = _labelStatus;
@synthesize labelDistance = _labelDistance;
@synthesize labelCount = _labelCount;
@synthesize labelMessage = _labelMessage;

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
