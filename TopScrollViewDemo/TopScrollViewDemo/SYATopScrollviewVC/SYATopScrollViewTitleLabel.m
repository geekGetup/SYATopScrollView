//
//  SYATopScrollViewTitleLabel.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "SYATopScrollViewTitleLabel.h"

@implementation SYATopScrollViewTitleLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor clearColor];
        
        self.userInteractionEnabled = YES;
        
        self.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    [_fillColor set];
    
    rect.size.width = rect.size.width * _scrollProgress;
    
    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
}

- (void)setScrollProgress:(CGFloat)scrollProgress {
    _scrollProgress = scrollProgress;
    [self setNeedsDisplay];
}

@end
