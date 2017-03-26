//
//  UserViewController.h
//  MoneyReward
//
//  Created by wilab on 17/2/26.
//  Copyright © 2017年 wilab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *tableViewCellArray;

@property (strong, nonatomic) IBOutlet UITableView *bodyTableView;


@end
