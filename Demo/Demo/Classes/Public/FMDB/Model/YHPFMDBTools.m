//
//  YHPFMDBTools.m
//  Demo
//
//  Created by YY on 16/8/22.
//  Copyright © 2016年 Yan. All rights reserved.
//

#import "YHPFMDBTools.h"

static FMDatabase *_db;

@implementation YHPFMDBTools

+(void)initialize{
    //初始化,在调用该累方法之前调用，用作初始化操作
    [super initialize];
    //    NSLog(@"initialize");
    //1.创建db
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"fmdb.db"];
    _db = [FMDatabase databaseWithPath:filePath];
    //打开数据库 -bool
    if([_db open]){
        NSLog(@"打开数据库成功");
    }else{
        NSLog(@"打开数据库失败");
        return;
    }
    
    //2.表 sql语句
    NSString *sql = @"create table if not exists t_product ('proNo' integer primary key AUTOINCREMENT,'proName' text,'proPrice' integer)";
    
    if([_db executeUpdate:sql]){
        NSLog(@"创建表ok");
    }else{
        NSLog(@"创建表fail");
    }
}

+(void)insertProduct:(YHPFMDBModel *)model{
    NSString *sql = [NSString stringWithFormat:@"insert into t_product ('proName','proPrice') values ('%@',%d)",model.proName,model.proPrice];
    
    if([_db executeUpdate:sql]){
        NSLog(@"ok");
    }else{
        NSLog(@"fail");
    }
}

+(void)deleteProductWithProNo:(int)proNo{
    NSString *sql = [NSString stringWithFormat:@"delete from t_product where proNo = %d",proNo];
    
    if([_db executeUpdate:sql]){
        NSLog(@"ok");
    }else{
        NSLog(@"fail");
    }
}

+(void)updateProductWithModel:(YHPFMDBModel *)model proNo:(int)proNo{
    
    NSLog(@"%@ %d",model.proName,model.proPrice);
    NSString *sql = [NSString stringWithFormat:@"update t_product set 'proName' = '%@' ,'proPrice' = %d where proNo = %d",model.proName,model.proPrice,proNo];
    
    NSLog(@"%@",sql);
    if([_db executeUpdate:sql]){
        NSLog(@"ok");
    }else{
        NSLog(@"fail");
    }
}

+(NSArray *)quertyAllProducts{
    
    NSMutableArray *mArray = [NSMutableArray array];
    NSString *sql = @"select * from t_product";
    //查询，得到结果集合
    FMResultSet *set = [_db executeQuery:sql];
    //循环取数据，执行一次next，取下一条数据
    while ([set next]) {
        
        //得到该行信息,指定结果集的第几列
        int proID = [set intForColumnIndex:0];
        NSString *proName = [set stringForColumnIndex:1];
        int proPrice = [set intForColumnIndex:2];
        //        NSLog(@"%d %@ %d",proNo,proName,proPrice);
        YHPFMDBModel *model = [YHPFMDBModel new];
        model.proID = proID;
        model.proName = proName;
        model.proPrice = proPrice;
        
        [mArray addObject:model];
    }
    
    return mArray.copy;
}

@end
