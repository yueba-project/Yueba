//
//  ChatCustomCell.h
//  Yueba
//
//  Created by abel on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatCustomCell : UITableViewCell{
    UILabel *dateLabel;
}

@property (strong, nonatomic)IBOutlet UILabel *dateLabel;

@end
