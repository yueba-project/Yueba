//
//  YuebaViewController.m
//  Yueba
//
//  Created by gg iyak on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaLoginViewController.h"

@interface YuebaLoginViewController ()

@end

@implementation YuebaLoginViewController

@synthesize username;
@synthesize password;

- (void)login:(id)sender
{
//    if ([username.text isEqualToString:@""] || [password.text isEqualToString:@""]) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"loginErrorTitle", nil) message:NSLocalizedString(@"loginErrorMessage", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"loginErrorButton", nil) otherButtonTitles:nil, nil];
//        [alert show];
//    } else {
        [self performSegueWithIdentifier:@"SegueToMain" sender:self];
//    }
}

- (void)hideKeyboard:(id)sender
{
    [sender resignFirstResponder];  
}

- (void)touchBackground:(id)sender
{
    [username becomeFirstResponder];
    [username resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
