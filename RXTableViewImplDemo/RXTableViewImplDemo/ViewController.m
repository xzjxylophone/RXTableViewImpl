//
//  ViewController.m
//  RXTableViewImplDemo
//
//  Created by Rush.D.Xzj on 2018/6/8.
//  Copyright © 2018 TAL. All rights reserved.
//

#import "ViewController.h"
#import "HaveNavViewController.h"
#import "HaveNoNavViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (UIImage *)rx_imageWithSize:(CGSize)size color:(UIColor *)color
{
    UIImage *img = nil;
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Home";
    
    // https://www.jianshu.com/p/75fd23bb5286
    // https://www.cnblogs.com/Jusive/p/6961149.html
    // http://www.cocoachina.com/ios/20170925/20640.html
    
    // storyboard 默认是YES
    // 代码默认是NO
    NSLog(@"translucent:%zd", self.navigationController.navigationBar.translucent ? 1 : 0);
//    self.navigationController.navigationBar.translucent = NO;
    //        self.tableView.contentInsetAdjustmentBehavior
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    UIColor *color = [UIColor blueColor];
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width, 44);
    UIImage *image = [self rx_imageWithSize:size color:color];
    
    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)haveNavTouchUpInside:(id)sender {
    HaveNavViewController *vc = [[HaveNavViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)HaveNoNavTouchUpInside:(id)sender {
    HaveNoNavViewController *vc = [[HaveNoNavViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
