//
//  ChatViewController.h
//  Yueba
//
//  Created by abel on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FaceViewController.h"
#import "IPAddress.h"
@class BaseTabBarController;

@interface ChatViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
{
	NSString            *_titleString;
	NSMutableString     *_messageString;
	NSString            *_phraseString;
	NSMutableArray      *_chatArray;
	
	UITableView         *_chatTableView;
	UITextField         *_messageTextField;
	BOOL                _isFromNewSMS;
	FaceViewController  *_phraseViewController;
	NSDate              *_lastTime;
}

@property (strong,nonatomic) BaseTabBarController           *basetempController;
@property (strong,nonatomic) IBOutlet FaceViewController    *phraseViewController;
@property (strong,nonatomic) IBOutlet UITableView           *chatTableView;
@property (strong,nonatomic) IBOutlet UITextField           *messageTextField;
@property (strong,nonatomic) NSString                       *phraseString;
@property (strong,nonatomic) NSString                       *titleString;
@property (strong,nonatomic) NSMutableString                *messageString;
@property (strong,nonatomic) NSMutableArray                 *chatArray;

@property (strong,nonatomic) NSDate            *lastTime;

-(IBAction)sendMessage_Click:(id)sender;
-(IBAction)showPhraseInfo:(id)sender;

-(void)openUDPServer;
-(void)sendMassage:(NSString *)message;
-(void)deleteContentFromTableView;

-(UIView *)bubbleView:(NSString *)text from:(BOOL)fromSelf;

-(void)getImageRange:(NSString*)message : (NSMutableArray*)array;
-(UIView *)assembleMessageAtIndex : (NSString *) message from: (BOOL)fromself;

@end
