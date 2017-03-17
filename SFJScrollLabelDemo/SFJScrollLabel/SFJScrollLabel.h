//
//  SFJScrollLabel.h
//  XTAnimations
//
//  Created by 沙缚柩 on 2017/3/16.
//  Copyright © 2017年 夏天然后. All rights reserved.

//  定义text的颜色 字体时一定要在设置text之前 要么就设置默认值

#import "SFJScrollLabelView.h"

@interface SFJScrollLabel : SFJScrollLabelView

@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIFont *font;

@end
