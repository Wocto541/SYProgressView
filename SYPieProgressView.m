//
//  SYPieProgressView.m
//  ZhuangheTourist
//
//  Created by ZhongJingHeTian on 2019/6/24.
//  Copyright © 2019 wangshiyue. All rights reserved.
//

#define PieColor    [UIColor lightGrayColor]
#define BackColor   [UIColor clearColor]

#import "SYPieProgressView.h"

@implementation SYPieProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor clearColor];
        _pieColor = PieColor;
        _pieBackgroundColor = BackColor;
    }
    
    return self;
}

- (void)setProgress:(CGFloat)progress
{
    [super setProgress:progress];
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    CGFloat radius = MIN(rect.size.width, rect.size.height) * 0.5 - self.pieMargin;
    
    //背景遮罩
    [self.backgroundColor set];
    CGFloat w = radius * 2 + self.pieMargin;
    CGFloat h = w;
    CGFloat x = (rect.size.width - w) * 0.5;
    CGFloat y = (rect.size.height - h) * 0.5;
    CGContextAddEllipseInRect(context, CGRectMake(x, y, w, h));
    CGContextFillPath(context);
    
    //进程圆
    [self.pieColor set];
    CGContextSetLineWidth(context, 1);
    CGContextMoveToPoint(context, xCenter, yCenter);
    CGContextAddLineToPoint(context, xCenter, 0);
    CGFloat endAngle = - M_PI * 0.5 + self.progress * M_PI * 2 + 0.001;
    CGContextAddArc(context, xCenter, yCenter, radius, - M_PI * 0.5, endAngle, NO);
    CGContextFillPath(context);
}

@end
