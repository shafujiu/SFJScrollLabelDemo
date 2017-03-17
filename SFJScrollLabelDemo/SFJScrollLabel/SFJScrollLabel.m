//
//  SFJScrollLabel.m
//  XTAnimations
//
//  Created by 沙缚柩 on 2017/3/16.
//  Copyright © 2017年 夏天然后. All rights reserved.
//

#import "SFJScrollLabel.h"

#define SFJScrollLabelDefaultTextColor [UIColor blackColor]  // 默认字体颜色
#define SFJScrollLabelDefaultFont [UIFont systemFontOfSize:14.f] // 默认字体

@interface SFJScrollLabel ()
@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation SFJScrollLabel

- (void)setText:(NSString *)text{
    _text = text;
    [self stopAnimation];
    [self addcontentLabelWithText:text];
    [self startAnimation];
}

- (void)addcontentLabelWithText:(NSString *)text textColor:(UIColor *)textColor {
    
    UILabel *contentL = [self createLabelWithText:text textColor:textColor];
    [self addContentView:contentL];
}

- (void)addcontentLabelWithText:(NSString *)text{
    
    UIColor *textC = _textColor ? _textColor : SFJScrollLabelDefaultTextColor;
    [self addcontentLabelWithText:text textColor:textC];
}

- (UILabel *)createLabelWithText:(NSString *)text textColor:(UIColor *)textColor {
    UIFont *font = _font ? _font : SFJScrollLabelDefaultFont;
    NSString *string = [NSString stringWithFormat:@" %@ ", text];
    CGFloat width = [self getWidthWithString:string font:font];
    UILabel *label  = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, self.frame.size.height)];
    label.font       = font;
    label.text       = string;
    label.textColor  = textColor;
    return label;
}

- (CGFloat)getWidthWithString:(NSString *)str font:(UIFont *)font{
    NSDictionary *atrr = @{NSFontAttributeName : font ? font : SFJScrollLabelDefaultFont};
    return [self getWidthWithString:str attribute:atrr];
}

- (CGFloat)getWidthWithString:(NSString *)str attribute:(NSDictionary <NSString *, id> *)attribute {
    
    NSParameterAssert(attribute);
    CGFloat width = 0;
    if (str.length) {
        CGRect rect = [str boundingRectWithSize:CGSizeMake(MAXFLOAT, 0)
                                         options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |
                       NSStringDrawingUsesFontLeading
                                      attributes:attribute
                                         context:nil];
        width = rect.size.width;
    }
    return width;
}

- (void)setFont:(UIFont *)font{
    _font = font;
    if (_text) {
        [self setText:_text];
    }
}

- (void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    if (_text) {
        [self setText:_text];
    }
}


@end
