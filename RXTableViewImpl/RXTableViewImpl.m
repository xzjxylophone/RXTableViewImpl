//
//  RXTableViewImpl.m
//  RXTableViewImplDemo
//
//  Created by Rush.D.Xzj on 2018/6/8.
//  Copyright © 2018 TAL. All rights reserved.
//

#import "RXTableViewImpl.h"



#define BDSS_IsIPhoneX      ([UIScreen mainScreen].bounds.size.height == 812)
#define BDSS_ScreenWidth        ([UIScreen mainScreen].bounds.size.width)
#define BDSS_ScreenHeight        ([UIScreen mainScreen].bounds.size.height)


@interface RXTableViewImpl()

@end



@implementation RXTableViewImpl

- (id)init
{
    if (self = [super init]) {
        self.page = self.startPage;
        
        self.contentView = [UIView new];
        
        self.tableView = [[UITableView alloc] initWithFrame:CGRectZero];
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.editing = NO;
        [self.tableView setSeparatorStyle:(UITableViewCellSeparatorStyleNone)];
        self.tableView.allowsMultipleSelectionDuringEditing = YES;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.tableHeaderView = [UIView new];
        self.tableView.tableFooterView = [UIView new];
        

        
        
        NSLog(@"init:%@", NSStringFromCGRect(self.tableView.frame));
        NSLog(@"init contentInset:%@", NSStringFromUIEdgeInsets(self.tableView.contentInset));
        
        [self.contentView addSubview:self.tableView];
    }
    return self;
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (void)loadMore
{
}
- (void)refresh
{
}


- (void)addToView:(UIView *)view
{
    if (view == self.contentView.superview) {
        return;
    }
    
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    BOOL isIPhoneX = (height == 812);
    CGFloat offset = (isIPhoneX ? 24 : 0) + (self.haveNavigationBar ? 64 : 0);
    CGFloat contentViewHeight = height - offset;
    CGFloat contentViewY = offset;
    
    if (self.haveNavigationBar) {
        UIViewController *vc = [self viewControllerWithView:view];
        // 表示传入参数View是vc的view,所以有可能有偏移的概念
        if (vc.view == view) {
            UINavigationController *nc = vc.navigationController;
            // 导航栏不透明,表面vc的view有偏移量,所以contentView要没有偏移量
            if (!nc.navigationBar.translucent) {
                contentViewY = 0;
            }
        }
    }
    
    
    
    
    self.contentView.frame = CGRectMake(0, contentViewY, width, contentViewHeight);
    self.tableView.frame = CGRectMake(0, 0, width, contentViewHeight);
    
    [view addSubview:self.contentView];
}

- (UIViewController *)viewControllerWithView:(UIView *)view
{
    
    
    UIView *p = view;
    while (p != nil) {
        UIResponder *nextResponder = [p nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
        p = p.superview;
    }
    return nil;
    
}

#pragma mark - Property
- (NSInteger)startPage
{
    return 1;
}
- (NSInteger)pageSize
{
    return 10;
}
- (BOOL)haveRefresh
{
    return YES;
}
- (BOOL)haveLoadMore
{
    return YES;
}
- (BOOL)haveNavigationBar
{
    return YES;
}






















@end
