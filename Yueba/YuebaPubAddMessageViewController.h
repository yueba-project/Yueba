//
//  YuebaPubAddMessageViewController.h
//  Yueba
//
//  Created by gg iyak on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface YuebaPubAddMessageViewController : UIViewController <UIImagePickerControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextView *message;

-(IBAction)popBack:(id)sender;
-(IBAction)useCamera:(id)sender;

@end
