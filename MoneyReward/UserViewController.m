//
//  UserViewController.m
//  MoneyReward
//
//  Created by wilab on 17/2/26.
//  Copyright © 2017年 wilab. All rights reserved.
//

#import "UserViewController.h"
#import "MRKit.h"
@interface UserViewController ()

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *section0 = [NSArray arrayWithObjects:USER_INFO_CELL, USER_GET_TASK_CELL, USER_REMINDER_CELL, USER_HISTORY_CELL, nil];
    NSArray *section1 = [NSArray arrayWithObjects:USER_LOGOUT_CELL, nil];
    self.tableViewCellArray = [[NSMutableArray alloc] initWithObjects:section0, section1, nil];
    
    [self.bodyTableView setDelegate:self];
    [self.bodyTableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
     
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.tableViewCellArray objectAtIndex:section] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.tableViewCellArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = [[self.tableViewCellArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    UITableViewCell *cell = [self.bodyTableView dequeueReusableCellWithIdentifier:identifier];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"        ";
}

@end
