//
//  AccountViewController.h
//  MoneyReward
//
//  Created by wilab on 17/3/4.
//  Copyright © 2017年 wilab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *accountTableView;

@end
