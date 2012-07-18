//
//  DateNearbyCell.m
//  Yueba
//
//  Created by Siying Wu on 7/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DateNearbyCell.h"

@implementation DateNearbyCell

@synthesize labelName = _lableName;
@synthesize labelAge = _labelAge;
@synthesize labelStatus = _labelStatus;
@synthesize labelDistance = _labelDistance;

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
