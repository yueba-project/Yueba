//
//  FaceViewController.h
//  Yueba
//
//  Created by abel on 7/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChatViewController;

@interface FaceViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray      *_phraseArray;
    ChatViewController  *_chatViewController;
}

//@property (retain,nonatomic)IBOutlet UIScrollView *faceScrollView;
@property (strong,nonatomic)IBOutlet UIScrollView   *faceScrollView;
@property (strong,nonatomic)NSMutableArray          *phraseArray;
@property (strong,nonatomic)ChatViewController      *chatViewController;

-(IBAction)dismissMyselfAction:(id)sender;
-(void)showEmojiView;

@end
