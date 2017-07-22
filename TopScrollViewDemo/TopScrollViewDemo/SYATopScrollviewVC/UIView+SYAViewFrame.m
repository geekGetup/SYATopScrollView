//
//  UIView+SYAViewFrame.m
//  TopScrollViewDemo
//
//  Created by 乐家 on 2017/7/21.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "UIView+SYAViewFrame.h"

@implementation UIView (SYAViewFrame)
- (CGFloat)sya_x {
    return self.frame.origin.x;
}
- (void)setSya_x:(CGFloat)sya_x {
    CGRect frame = self.frame;
    frame.origin.x = sya_x;
    self.frame = frame;
}
- (CGFloat)sya_y {
    return self.frame.origin.y;
}
- (void)setSya_y:(CGFloat)sya_y {
    CGRect frame = self.frame;
    frame.origin.y = sya_y;
    self.frame = frame;
}
- (CGFloat)sya_width {
    return self.frame.size.width;
}
- (void)setSya_width:(CGFloat)sya_width {
    CGRect frame = self.frame;
    frame.size.width = sya_width;
    self.frame = frame;
}
- (CGFloat)sya_height {
    return self.frame.size.height;
}
- (void)setSya_height:(CGFloat)sya_height {
    CGRect frame = self.frame;
    frame.size.height = sya_height;
    self.frame = frame;
}
- (CGFloat)sya_centerX {
    return self.center.x;
}
- (void)setSya_centerX:(CGFloat)sya_centerX {
    CGPoint center = self.center;
    center.x = sya_centerX;
    self.center = center;
}
- (CGFloat)sya_centerY {
    return self.center.y;
}
- (void)setSya_centerY:(CGFloat)sya_centerY {
    CGPoint center = self.center;
    center.y = sya_centerY;
    self.center = center;
}
@end
