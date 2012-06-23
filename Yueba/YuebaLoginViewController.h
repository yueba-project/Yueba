//
//  YuebaViewController.h
//  Yueba
//
//  Created by gg iyak on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YuebaLoginViewController : UIViewController
{
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
}

@property (strong, nonatomic) UITextField *username;
@property (strong, nonatomic) UITextField *password;

- (IBAction)login:(id)sender;
- (IBAction)hideKeyboard:(id)sender;
- (IBAction)touchBackground:(id)sender;

@end
