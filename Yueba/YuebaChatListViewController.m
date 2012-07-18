//
//  YuebaChatListViewController.m
//  Yueba
//
//  Created by abel on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaChatListViewController.h"
#import "YuebaChatListCell.h"

@interface YuebaChatListViewController ()

@end

@implementation YuebaChatListViewController

@synthesize userImage = _userImageView;
@synthesize userName = _userNameView;
@synthesize lastChat = _lastChatView;

@synthesize userImages = _userImages;
@synthesize userNames = _userNames;
@synthesize lastChates = _lastChates;

@synthesize chatView = _chatView;

//@synthesize chatViewController = _chatViewController;
//@synthesize viewController = _viewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.userImages = [[NSArray alloc] initWithObjects:@"head1.jpg", @"head2.jpg", nil];
    self.userNames = [[NSArray alloc] initWithObjects:@"马丽", @"刘婷", nil];
    self.lastChates = [[NSArray alloc] initWithObjects:@"晚上8点丽莉玛莲见", @"昨晚很High，今晚继续", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/*..........................*/
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //返回行数
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * tableIdentifier=@"CellFromNib";
    static BOOL nibsRegistered=NO;
    if(!nibsRegistered)
    {//第一次运行时注册nib文件，文件名不需要扩展名
        UINib *nib=[UINib nibWithNibName:@"YuebaChatListCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:tableIdentifier];
        nibsRegistered=YES;
    }
    YuebaChatListCell *cell=[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    UIImage *userImage = [UIImage imageNamed:[self.userImages objectAtIndex:[indexPath row]]];
    cell.imageView.image = userImage;
    cell.userNameView.text = [self.userNames objectAtIndex:[indexPath row]];
    cell.lastChatView.text = [self.lastChates objectAtIndex:[indexPath row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UINavigationController *navigationController = [[UINavigationController alloc]init];
//    ChatViewController *chatView = [[ChatViewController alloc] init];
//    [self.navigationController pushViewController:chatView animated:YES];
//    [navigationController release];
//    [chatView release];
    
    [self.chatView performSegueWithIdentifier:@"chatDetail" sender:(self)];
}
/*----------------------------*/

@end
