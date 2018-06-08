//
//  HaveNoNavViewController.m
//  RXTableViewImplDemo
//
//  Created by Rush.D.Xzj on 2018/6/8.
//  Copyright © 2018 TAL. All rights reserved.
//

#import "HaveNoNavViewController.h"
#import "HaveNoNavTableViewImpl.h"
@interface HaveNoNavViewController ()
@property (nonatomic, strong) RXTableViewImpl *tableViewImpl;

@end

@implementation HaveNoNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Have No Nav";
    
    
    self.tableViewImpl = [[HaveNoNavTableViewImpl alloc] init];
    [self.tableViewImpl addToView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
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
