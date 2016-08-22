//
//  YHPFMDBTools.h
//  Demo
//
//  Created by YY on 16/8/22.
//  Copyright © 2016年 Yan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHPFMDBTools : NSObject

//增
+(void)insertProduct:(YHPFMDBModel *)model;
//删
+(void)deleteProductWithProNo:(int) proNo;
//改
+(void)updateProductWithModel:(YHPFMDBModel *)model proNo:(int)proNo;
//查
+(NSArray *)quertyAllProducts;

@end
