//
//  SYPieProgressView.h
//  ZhuangheTourist
//
//  Created by ZhongJingHeTian on 2019/6/24.
//  Copyright © 2019 wangshiyue. All rights reserved.
//

#import "SYProgressView.h"

NS_ASSUME_NONNULL_BEGIN

/**
 饼图进度条
 */
@interface SYPieProgressView : SYProgressView


/**
 饼图边距(默认为0)
 */
@property (nonatomic, assign) CGFloat pieMargin;

/**
 饼图颜色
 */
@property (nonatomic, strong) UIColor *pieColor;

/**
 饼图背景颜色
 */
@property (nonatomic, strong) UIColor *pieBackgroundColor;

@end

NS_ASSUME_NONNULL_END
