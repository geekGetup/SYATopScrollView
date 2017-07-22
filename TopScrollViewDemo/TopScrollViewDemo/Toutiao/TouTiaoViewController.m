//
//  TouTiaoViewController.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "TouTiaoViewController.h"
#import "TestViewController.h"
@interface TouTiaoViewController ()

@end

@implementation TouTiaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"今日头条";
    self.view.backgroundColor = [UIColor whiteColor];
    // 模仿网络延迟，0.2秒后，才知道有多少标题
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        // 移除之前所有子控制器
        [self.childViewControllers makeObjectsPerformSelector:@selector(removeFromParentViewController)];
        
        // 把对应标题保存到控制器中，并且成为子控制器，才能刷新
        // 添加所有新的子控制器
        [self setUpAllViewController];
        
        // 注意：必须先确定子控制器
        [self refreshDisplay];
        
    });
    
    /*  设置标题渐变：标题填充模式 */
    [self setUpTitleGradient:^(kTitleColorStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        // 标题填充模式
        *titleColorGradientStyle = kTitleColorStyleFill;
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
