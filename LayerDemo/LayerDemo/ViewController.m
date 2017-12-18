//
//  ViewController.m
//  LayerDemo
//
//  Created by NicoLin on 2017/12/11.
//  Copyright © 2017年 NicoLin. All rights reserved.
//

#import "ViewController.h"
#import "CAShapeLayerButton.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView    *showImageView;

@property (nonatomic, strong) CALayer    *imageLayer;
@property (nonatomic, strong) CALayer    *maskLayer;

@property (nonatomic, strong) CAShapeLayerButton    *shapButton;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.shapButton];
    
//    [self.showImageView.layer addSublayer:self.imageLayer];
//    [self.showImageView.layer addSublayer:self.maskLayer];
//
//    self.view.backgroundColor = [UIColor redColor];
//
//    self.view.layer.backgroundColor = [UIColor purpleColor].CGColor;
//

    
    

}

- (void)shapButtonClick:(CAShapeLayerButton*)btn {
    [btn startAnimation];
}
- (CAShapeLayerButton *)shapButton {
    if (!_shapButton) {
        _shapButton = [[CAShapeLayerButton alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
        [_shapButton setImage:[UIImage imageNamed:@"girl"] forState:UIControlStateNormal];
        [_shapButton addTarget:self action:@selector(shapButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _shapButton;
}
- (CALayer*)maskLayer {
    if (!_maskLayer) {
        _maskLayer = [[CALayer alloc] init];
        _maskLayer.frame = self.showImageView.layer.bounds;
        _maskLayer.backgroundColor = [[[UIColor blackColor] colorWithAlphaComponent:0.8] CGColor];
    }
    return _maskLayer;
}
- (CALayer*)imageLayer {
    if (!_imageLayer) {
        _imageLayer = [[CALayer alloc] init];
        _imageLayer.frame = CGRectMake(50, 50, 100, 100);
        _imageLayer.contents =  (id)[UIImage imageNamed:@"girl"].CGImage;
    }
    return _imageLayer;
}
- (UIImageView *)showImageView {
    if (!_showImageView) {
        _showImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
        _showImageView.image = [UIImage imageNamed:@"test"];
    }
    return _showImageView;
}



@end
