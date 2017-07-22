//
//  HimaViewController.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "HimaViewController.h"
#import "TestViewController.h"
@interface HimaViewController ()

@end

@implementation HimaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"喜马拉雅";
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加所有子控制器
    [self setUpAllViewController];
    
    // 设置标题字体
    // 推荐方式
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight,CGFloat *titleWidth) {
        
        // 设置标题字体
        *titleFont = [UIFont systemFontOfSize:15];
        
    }];
    
    // 推荐方式（设置下标）
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor,BOOL *isUnderLineEqualTitleWidth) {
        // 标题填充模式
        *underLineColor = [UIColor redColor];
    }];
    
    // 设置全屏显示
    // 如果有导航控制器或者tabBarController,需要设置tableView额外滚动区域,详情请看FullChildViewController
    self.isfullScreen = YES;
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
