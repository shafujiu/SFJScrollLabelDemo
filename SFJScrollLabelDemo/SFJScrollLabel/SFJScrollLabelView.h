//
//  SFJScrollLabelView.h
//  SFJScrollLabelDemo
//
//  Created by 沙缚柩 on 2017/3/17.
//  Copyright © 2017年 沙缚柩. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SFJScrollLabelView;

typedef NS_ENUM(NSInteger, ScrollDirectionType) {
    FromLeftType        = 0,
    FromRightType       = 1,
    
};

@protocol XTScrollLabelViewDelegate <NSObject>

@optional

- (void)drawMarqueeView:(SFJScrollLabelView *)drawMarqueeView animationDidStopFinished:(BOOL)finished;

@end

@interface SFJScrollLabelView : UIView

// 协议
@property (nonatomic, weak) id <XTScrollLabelViewDelegate> delegate;

// 速度
@property (nonatomic) CGFloat                               speed;

// 方向
@property (nonatomic) ScrollDirectionType                   marqueeDirection;

// 容器
- (void)addContentView:(UIView *)view;

// 开始
- (void)startAnimation;

// 停止
- (void)stopAnimation;

// 暂停
- (void)pauseAnimation;

// 恢复
- (void)resumeAnimation;

@end
