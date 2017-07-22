//
//  WangyiViewController.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "WangyiViewController.h"
#import "TestViewController.h"
@interface WangyiViewController ()

@end

@implementation WangyiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"网易新闻";
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加所有子控制器
    [self setUpAllViewController];
    
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        *norColor = [UIColor lightGrayColor];
        *selColor = [UIColor blackColor];
        *titleWidth = [UIScreen mainScreen].bounds.size.width / 4;
    }];
    
    // 标题渐变
    // *推荐方式(设置标题渐变)
    [self setUpTitleGradient:^(kTitleColorStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        
    }];
    
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor,BOOL *isUnderLineEqualTitleWidth) {
        //        *isUnderLineDelayScroll = YES;
        *isUnderLineEqualTitleWidth = YES;
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
