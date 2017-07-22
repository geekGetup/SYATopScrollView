//
//  TencentViewController.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "TencentViewController.h"
#import "TestViewController.h"
@interface TencentViewController ()

@end

@implementation TencentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"腾讯视频";
    CGFloat y = self.navigationController?64:0;
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    self.view.backgroundColor = [UIColor whiteColor];
    // 设置搜索框
    CGFloat searchH = 44;
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, y, screenW, searchH)];
    [self.view addSubview:searchBar];
    
    // 添加所有子控制器
    [self setUpAllViewController];
    
    // 设置整体内容尺寸（包含标题滚动视图和底部内容滚动视图）
    [self setUpContentViewFrame:^(UIView *contentView) {
        
        CGFloat contentX = 0;
        
        CGFloat contentY = CGRectGetMaxY(searchBar.frame);
        
        CGFloat contentH = screenH - contentY;
        
        contentView.frame = CGRectMake(contentX, contentY, screenW, contentH);
        
    }];
    
    /****** 标题渐变 ******/
    [self setUpTitleGradient:^(kTitleColorStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        *norColor = [UIColor blackColor];
        *selColor = [UIColor orangeColor];
    }];
    /****** 设置遮盖 ******/
    // *推荐方式(设置遮盖)
    [self setUpCoverEffect:^(UIColor **coverColor, CGFloat *coverCornerRadius) {
        
        // 设置蒙版颜色
        *coverColor = [UIColor colorWithWhite:0.7 alpha:0.4];
        
        // 设置蒙版圆角半径
        *coverCornerRadius = 13;
    }];
}

// 添加所有子控制器
- (void)setUpAllViewController
{
    
    // 段子
    TestViewController *wordVc1 = [[TestViewController alloc] init];
    wordVc1.title = @"精选";
    [self addChildViewController:wordVc1];
    
    // 段子
    TestViewController *wordVc2 = [[TestViewController alloc] init];
    wordVc2.title = @"鬼吹灯";
    [self addChildViewController:wordVc2];
    
    // 段子
    TestViewController *wordVc3 = [[TestViewController alloc] init];
    wordVc3.title = @"电视剧";
    [self addChildViewController:wordVc3];
    
    TestViewController *wordVc4 = [[TestViewController alloc] init];
    wordVc4.title = @"电影";
    [self addChildViewController:wordVc4];
    
    // 全部
    TestViewController *allVc = [[TestViewController alloc] init];
    allVc.title = @"综艺";
    [self addChildViewController:allVc];
    
    // 视频
    TestViewController *videoVc = [[TestViewController alloc] init];
    videoVc.title = @"动漫";
    [self addChildViewController:videoVc];
    
    // 声音
    TestViewController *voiceVc = [[TestViewController alloc] init];
    voiceVc.title = @"声音";
    [self addChildViewController:voiceVc];
    
    // 图片
    TestViewController *pictureVc = [[TestViewController alloc] init];
    pictureVc.title = @"图片";
    [self addChildViewController:pictureVc];
    
    // 段子
    TestViewController *wordVc = [[TestViewController alloc] init];
    wordVc.title = @"段子";
    [self addChildViewController:wordVc];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
