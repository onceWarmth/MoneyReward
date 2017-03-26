//
//  TaskDetailViewController.m
//  MoneyReward
//
//  Created by wilab on 17/3/13.
//  Copyright © 2017年 wilab. All rights reserved.
//

#import "TaskDetailViewController.h"

@interface TaskDetailViewController ()
@property (strong, nonatomic) UITableView *bodyTableView;

@end

@implementation TaskDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BMKMapView *mapView = [[BMKMapView alloc] initWithFrame:CGRectMake(0, self.navigationController.navigationBar.bounds.size.height, self.view.bounds.size.width, 260-self.navigationController.navigationBar.bounds.size.height)];
    [self.view addSubview:mapView];
    
}

- (IBAction)clickButtonToGoBack:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
