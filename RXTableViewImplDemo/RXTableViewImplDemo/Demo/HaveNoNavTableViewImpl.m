//
//  HaveNoNavTableViewImpl.m
//  RXTableViewImplDemo
//
//  Created by Rush.D.Xzj on 2018/6/8.
//  Copyright © 2018 TAL. All rights reserved.
//

#import "HaveNoNavTableViewImpl.h"

@implementation HaveNoNavTableViewImpl
- (id)init
{
    if (self = [super init]) {
        NSMutableArray *array = [NSMutableArray new];
        for (NSInteger i = 0; i < 50; i++) {
            [array addObject:[NSString stringWithFormat:@"%zd", i]];
        }
        self.itemArray = array;
    }
    return self;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.itemArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *string = @"abc";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:string];
    }
    cell.textLabel.text = self.itemArray[indexPath.row];
    return cell;
}


- (BOOL)haveNavigationBar
{
    return NO;
}

@end
