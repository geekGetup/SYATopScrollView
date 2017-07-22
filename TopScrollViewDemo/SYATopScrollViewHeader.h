//
//  SYATopScrollViewHeader.h
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#ifndef SYATopScrollViewHeader_h
#define SYATopScrollViewHeader_h
/*
 **************用法*****************
 
 一、导入YZDisplayViewHeader.h
 二、自定义YZDisplayViewController
 三、添加所有子控制器，保存标题在子控制器中
 四、查看YZDisplayViewController头文件，找需要的效果设置
 五、标题被点击或者内容滚动完成，会发出这个通知【"YZDisplayViewClickOrScrollDidFinsh"】，监听这个通知，可以做自己想要做的事情，比如加载数据
 */


/*
 **************使用须知*****************
 1.字体放大效果和角标不能同时使用。
 2.当前框架，如果标题宽度自定义，就不能使用颜色填充模式（YZTitleColorGradientStyleFill），因为要做今日头条效果，标题宽度比较内部计算好。
 3.当前框架已经做了离屏渲染优化和控制器view懒加载
 2.网易效果：颜色渐变 + 字体缩放
 3.进入头条效果：颜色填充渐变
 4.展示tableView的时候，如果有UITabBarController,UINavgationController,需要自己给tableView顶部添加64额外滚动额外滚动区域。
 */

#import "SYATopScrollViewController.h"

#define SYAScreenW [UIScreen mainScreen].bounds.size.width
#define SYAScreenH [UIScreen mainScreen].bounds.size.height

// 导航条高度
static CGFloat const SYANavBarH = 64;

// 标题滚动视图的高度
static CGFloat const SYATitleScrollViewH = 44;

// 标题缩放比例
static CGFloat const SYATitleTransformScale = 1.3;

// 下划线默认高度
static CGFloat const SYAUnderLineH = 2;

// 默认标题字体
#define SYATitleFont [UIFont systemFontOfSize:14]

// 默认标题间距
static CGFloat const margin = 20;

// 点击标题,内容滚动完成发出的通知,
static NSString * const SYATopTitleClickOrScrollDidFinshNote = @"SYATopTitleClickOrScrollDidFinshNote";

// 重复点击通知
static NSString * const SYATopTitleRepeatClickTitleNote = @"SYATopTitleRepeatClickTitleNote";

#endif /* SYATopScrollViewHeader_h */
