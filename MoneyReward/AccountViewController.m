//
//  AccountViewController.m
//  MoneyReward
//
//  Created by wilab on 17/3/4.
//  Copyright © 2017年 wilab. All rights reserved.
//

#import "AccountViewController.h"
#import "MRKit.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.accountTableView setTableFooterView:[[UIView alloc ] initWithFrame:CGRectZero]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if (indexPath.row == 0)
        cell = [self.accountTableView dequeueReusableCellWithIdentifier:TASK_CELL_1];
    else if (indexPath.row == 1)
        cell = [self.accountTableView dequeueReusableCellWithIdentifier:TASK_CELL_2];
    else
        cell = [self.accountTableView dequeueReusableCellWithIdentifier:TASK_CELL_3];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:DETAILS_SEGUE sender:nil];
}

@end
