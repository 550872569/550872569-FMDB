//
//  YHPFaceRecognitionVC.m
//  Demo
//
//  Created by cai on 16/8/22.
//  Copyright © 2016年 Yan. All rights reserved.
//

#import "YHPFaceRecognitionVC.h"

@implementation YHPFaceRecognitionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = COLOR_WHITE;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"self%@",self);
}
@end
