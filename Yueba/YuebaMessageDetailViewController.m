//
//  YuebaMessageDetailViewController.m
//  Yueba
//
//  Created by gg iyak on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "YuebaMessageDetailViewController.h"
#import "YuebaPubOpenerInfoCell.h"
#import "YuebaPubOpenerMessageCell.h"
#import "YuebaPubReplyCell.h"

@interface YuebaMessageDetailViewController ()

@end

@implementation YuebaMessageDetailViewController

@synthesize table;
@synthesize openerInfo;
@synthesize replyHeads;
@synthesize replyAges;
@synthesize replyNames;
@synthesize replyGenders;
@synthesize replyStatus;
@synthesize replyMessages;
@synthesize replyTimes;

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([indexPath row] == 0) {
        return 75;
    } else if ([indexPath row] == 1) {
        return 60;
    }
    return 80;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.replyHeads count] + 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    int count = [indexPath row];
    switch (count) {
        case 0:
            return [self createOpenerInfoCell:[indexPath row] tableView:tableView];
            break;
        case 1:
            return [self createOpenerMessageCell:[indexPath row] tableView:tableView];
            break;
        default:
            return [self createReplyCell:[indexPath row] tableView:tableView];
            break;
    }
    return nil;
}

- (id)createOpenerInfoCell:(int)index tableView:(UITableView *)tableView
{
    static NSString *InfoId = @"PubOpenerInfoCell";
    YuebaPubOpenerInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:InfoId];
    if (cell == nil) {
        cell = [[YuebaPubOpenerInfoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:InfoId];
    }
    UIImage *image = [UIImage imageNamed:[self.openerInfo objectAtIndex:0]];
    cell.head.image = image;
    cell.name.text = [self.openerInfo objectAtIndex:1];
    cell.age.text = [self.openerInfo objectAtIndex:2];
    UIImage *gImage = [UIImage imageNamed:[self.openerInfo objectAtIndex:3]];
    cell.gender.image = gImage;
    cell.status.text = [self.openerInfo objectAtIndex:4];
    return cell;
}

- (id)createOpenerMessageCell:(int)index tableView:(UITableView *)tableView
{
    static NSString *MessageId = @"PubOpenerMessageCell";
    YuebaPubOpenerMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:MessageId];
    if (cell == nil) {
        cell = [[YuebaPubOpenerMessageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MessageId];
    }
    cell.message.text = [self.openerInfo objectAtIndex:5];
    cell.replyCount.text = [self.openerInfo objectAtIndex:6];
    cell.time.text = [self.openerInfo objectAtIndex:7];
    return cell;
}

- (id)createReplyCell:(int)index tableView:(UITableView *)tableView
{
    static NSString *ReplyId = @"PubReplyCell";
    YuebaPubReplyCell *cell = [tableView dequeueReusableCellWithIdentifier:ReplyId];
    if (cell == nil) {
        cell = [[YuebaPubReplyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ReplyId];
    }
    UIImage *image = [UIImage imageNamed:[self.replyHeads objectAtIndex:index - 2]];
    cell.head.image = image;
    cell.name.text = [self.replyNames objectAtIndex:index - 2];
    cell.age.text = [self.replyAges objectAtIndex:index - 2];
    UIImage *gImage = [UIImage imageNamed:[self.replyGenders objectAtIndex:index - 2]];
    cell.gender.image = gImage;
    cell.status.text = [self.replyStatus objectAtIndex:index - 2];
    cell.message.text = [self.replyMessages objectAtIndex:index - 2];
    cell.time.text = [self.replyTimes objectAtIndex:index - 2];
    return cell;
}

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
