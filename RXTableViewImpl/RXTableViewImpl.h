//
//  RXTableViewImpl.h
//  RXTableViewImplDemo
//
//  Created by Rush.D.Xzj on 2018/6/8.
//  Copyright © 2018 TAL. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface RXTableViewImpl : NSObject<UITableViewDataSource, UITableViewDelegate>



@property (nonatomic, strong) UIView *contentView;


// 会自动初始化tableView
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *itemArray;
// 当前所在的页数, 初始化为startPage
@property (nonatomic, assign) NSInteger page;





// 页数开始, 默认=1
@property (nonatomic, readonly) NSInteger startPage;
// 页数大小, 默认=10
@property (nonatomic, readonly) NSInteger pageSize;
// 是否有刷新,默认=YES
@property (nonatomic, readonly) BOOL haveRefresh;
// 是否有加载更多,默认=YES
@property (nonatomic, readonly) BOOL haveLoadMore;
// 是否有导航栏,默认=YES
@property (nonatomic, readonly) BOOL haveNavigationBar;




- (void)refresh;
- (void)loadMore;

- (void)addToView:(UIView *)view;






@end
