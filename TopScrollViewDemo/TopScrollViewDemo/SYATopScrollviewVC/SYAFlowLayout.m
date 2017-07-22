//
//  SYAFlowLayout.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "SYAFlowLayout.h"

@implementation SYAFlowLayout
- (void)prepareLayout
{
    [super prepareLayout];
    
    self.minimumInteritemSpacing = 0;
    
    self.minimumLineSpacing = 0;
    
    if (self.collectionView.bounds.size.height) {
        
        self.itemSize = self.collectionView.bounds.size;
    }
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
}
@end
