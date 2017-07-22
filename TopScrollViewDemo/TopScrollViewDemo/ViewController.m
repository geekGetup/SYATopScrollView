//
//  ViewController.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "ViewController.h"
#import "TencentViewController.h"
#import "TouTiaoViewController.h"
#import "WangyiViewController.h"
#import "HimaViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *titleArray;
@end

@implementation ViewController
static NSString *ID = @"cellID";
- (NSArray *)titleArray {
    if (!_titleArray) {
        _titleArray = @[@"腾讯",@"今日头条",@"网易",@"喜马拉雅"];
    }
    return _titleArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试";
    UITableView *tableView = [[UITableView alloc] init];
    tableView.frame = self.view.bounds;
    [self.view addSubview:tableView];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    tableView.delegate = self;
    tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.textLabel.text = self.titleArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger index = indexPath.row;
    switch (index) {
        case 0:
        {
            TencentViewController *vc = [[TencentViewController alloc] init];
            [self pushToVC:vc];
        }
            break;
        case 1:
        {
            TouTiaoViewController *vc = [[TouTiaoViewController alloc] init];
            [self pushToVC:vc];
        }
            break;
        case 2:
        {
            WangyiViewController *vc = [[WangyiViewController alloc] init];
            [self pushToVC:vc];
        }
            break;
        case 3:
        {
            HimaViewController *vc = [[HimaViewController alloc] init];
            [self pushToVC:vc];
        }
            break;
        default:
            break;
    }
}
- (void)pushToVC:(UIViewController *)vc {
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
