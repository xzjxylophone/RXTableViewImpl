//
//  HaveNavViewController.m
//  RXTableViewImplDemo
//
//  Created by Rush.D.Xzj on 2018/6/8.
//  Copyright © 2018 TAL. All rights reserved.
//

#import "HaveNavViewController.h"
#import "HaveNavTableViewImpl.h"
@interface HaveNavViewController ()

@property (nonatomic, strong) RXTableViewImpl *tableViewImpl;

@end

@implementation HaveNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Have Nav";
    self.view.backgroundColor = [UIColor redColor];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableViewImpl = [[HaveNavTableViewImpl alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    
    [self.tableViewImpl addToView:self.view];
    
    
    
    NSLog(@"viewDidAppear:%@", NSStringFromCGRect(self.tableViewImpl.tableView.frame));
    NSLog(@"viewDidAppear contentInset:%@", NSStringFromUIEdgeInsets(self.tableViewImpl.tableView.contentInset));
    NSLog(@"viewDidAppear:%@", NSStringFromCGRect(self.view.frame));


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
