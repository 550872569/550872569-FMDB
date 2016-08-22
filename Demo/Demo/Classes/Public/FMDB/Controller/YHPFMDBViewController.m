//
//  YHPFMDBViewController.m
//  Demo
//
//  Created by YY on 16/8/22.
//  Copyright © 2016年 Yan. All rights reserved.
//

#import "YHPFMDBViewController.h"

@interface YHPFMDBViewController () {
    
}

@end

@implementation YHPFMDBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)configUI {
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"self%@",self);
}

/*
 - (IBAction)insertClick:(id)sender {
 CZProductModel *model= [CZProductModel new];
 model.proName = [NSString stringWithFormat:@"iPhone%d",arc4random_uniform(10)];
 model.proPrice = arc4random_uniform(500)+4000;
 
 [CZProductTools insertProduct:model];
 }
 - (IBAction)deleteClick:(id)sender {
 
 [CZProductTools deleteProductWithProNo:2];
 
 }
 - (IBAction)updateClick:(id)sender {
 
 CZProductModel *model= [CZProductModel new];
 model.proName = [NSString stringWithFormat:@"iPhone%d",arc4random_uniform(10)];
 model.proPrice = arc4random_uniform(500)+4000;
 
 [CZProductTools updateProductWithModel:model proNo:3];
 }
 - (IBAction)queryClick:(id)sender {
 
 [CZProductTools quertyAllProducts];
 }

 */
@end
