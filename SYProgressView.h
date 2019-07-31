//
//  SYProgressView.h
//  ZhuangheTourist
//
//  Created by ZhongJingHeTian on 2019/6/24.
//  Copyright © 2019 wangshiyue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 自定义进度条父类视图
 */
@interface SYProgressView : UIView

/**
 进度值（0~1）
 */
@property (nonatomic, assign) CGFloat progress;

@end

NS_ASSUME_NONNULL_END
