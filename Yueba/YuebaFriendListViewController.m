//
//  YuebaFriendListViewController.m
//  Yueba
//
//  Created by abel on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaFriendListViewController.h"
#import "YuebaFriendListCell.h"

@interface YuebaFriendListViewController ()

@end

@implementation YuebaFriendListViewController

@synthesize userImage = _userImage;
@synthesize userName = _userName;
@synthesize userAge = _userAge;
@synthesize userSexImage = _userSexImage;
@synthesize distance = _distance;
@synthesize online = _online;

@synthesize userImages = _userImages;
@synthesize userNames = _userNames;
@synthesize userAges = _userAges;
@synthesize userSexImages = _userSexImages;
@synthesize distances = _distances;
@synthesize onlines = _onlines;

@synthesize owner = _owner;

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
    self.userAges = [[NSArray alloc] initWithObjects:@"18", @"21", nil];
    self.userSexImages = [[NSArray alloc] initWithObjects:@"yueba.png", @"config.png", nil];
    self.distances = [[NSArray alloc] initWithObjects:@"500米以内", @"300米以内", nil];
    self.onlines = [[NSArray alloc] initWithObjects:@"当前在线", @"当前在线", nil];
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
        UINib *nib=[UINib nibWithNibName:@"YuebaFriendListCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:tableIdentifier];
        nibsRegistered=YES;
    }
    YuebaFriendListCell *cell=[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    UIImage *userImage = [UIImage imageNamed:[self.userImages objectAtIndex:[indexPath row]]];
    cell.userImageView.image = userImage;
    cell.userNameView.text = [self.userNames objectAtIndex:[indexPath row]];
    cell.userAgeView.text = [self.userAges objectAtIndex:[indexPath row]];
    UIImage *userSexImage = [UIImage imageNamed:[self.userSexImages objectAtIndex:[indexPath row]]];
    cell.userSexImageView.image = userSexImage;
    cell.distanceView.text = [self.distances objectAtIndex:[indexPath row]];
    cell.onlineView.text = [self.onlines objectAtIndex:[indexPath row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.owner performSegueWithIdentifier:@"friendDetail" sender:(self)];
}

@end
