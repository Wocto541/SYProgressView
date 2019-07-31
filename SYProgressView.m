//
//  SYProgressView.m
//  ZhuangheTourist
//
//  Created by ZhongJingHeTian on 2019/6/24.
//  Copyright © 2019 wangshiyue. All rights reserved.
//

#import "SYProgressView.h"

@implementation SYProgressView

- (void)setProgress:(CGFloat)progress
{
    if (progress < 0)
    {
        _progress = 0.0;
    }
    else if (progress > 1)
    {
        _progress = 1.0;
    }
    else
    {
        _progress = progress;
    }
}

@end
