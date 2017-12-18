//
//  CAShapeLayerButton.m
//  LayerDemo
//
//  Created by LiYang on 2017/12/17.
//  Copyright © 2017年 NicoLin. All rights reserved.
//

#import "CAShapeLayerButton.h"

@interface CAShapeLayerButton ()
@property (nonatomic, strong) CAShapeLayer    *subLayer;
@property (nonatomic, strong) CABasicAnimation    *animation;


@end

@implementation CAShapeLayerButton

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {

        [self.layer addSublayer:self.subLayer];
        
        
    }
    return self;
}
- (void)startAnimation {
//    self.layer.hidden = YES;
    self.subLayer.hidden = NO;

    // 设定为缩放
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    // 动画选项设定
    animation.duration = 2.5; // 动画持续时间
    animation.repeatCount = 3; // 重复次数
    animation.autoreverses = YES; // 动画结束时执行逆动画
    // 缩放倍数
    animation.fromValue = [NSNumber numberWithFloat:1.0]; // 开始时的倍率
    animation.toValue = [NSNumber numberWithFloat:2.0]; // 结束时的倍率
    // 添加动画
    [_subLayer addAnimation:animation forKey:@"scale-layer"];
    
}

- (CAShapeLayer *)subLayer {
    if (!_subLayer) {
        _subLayer = [CAShapeLayer layer];
        _subLayer.frame = CGRectMake(0, 0, self.bounds.size.width - 100, self.bounds.size.height - 100);
        _subLayer.position = CGPointMake(50, 50);
        _subLayer.anchorPoint = CGPointMake(0, 0);
        _subLayer.backgroundColor = [UIColor redColor].CGColor;
        _subLayer.fillColor = [UIColor yellowColor].CGColor;
        _subLayer.hidden = YES;
    }
    return _subLayer;
}

@end
