//
//  SQLite.m
//  FMDB_Research
//
//  Created by 刘松洪 on 16/10/17.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import "SQLite.h"
#import "FMDB.h"
#import "DataModel.h"

#define ERROR [_fmdb lastErrorMessage]
@interface SQLite (){
    FMDatabase *_fmdb;
}

@end
@implementation SQLite

+ (instancetype)shareInstance {
    static SQLite *_sql = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sql = [[SQLite alloc]init];
    });
    return _sql;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        NSString *sqlPath      = [documentPath stringByAppendingPathComponent:@"student.db"];
        NSLog(@"数据库存放路径:%@",sqlPath);
        _fmdb = [FMDatabase databaseWithPath:sqlPath];
        if ([_fmdb open]) {//AUTOINCREMENT
            BOOL result = [_fmdb executeUpdate:@"CREATE TABLE IF NOT EXISTS t_student (id integer PRIMARY KEY AUTOINCREMENT, name text NOT NULL, age integer NOT NULL);"];
            if (result) {
                NSLog(@"数据库创建表student成功");
            }else {
                NSLog(@"创建表失败%@",ERROR);
            }
        }else {
            NSLog(@"数据库打开失败%@",ERROR);
        }
     
    }
    return self;
}

- (void)insertDataWithName:(NSString *)name withAge:(NSString *)age {

    BOOL result = NO;
    result = [_fmdb executeUpdate:@"insert into t_student (name,age) VALUES (?,?);",name,age];
    if (!result) {
        NSLog(@"插入失败:%@",ERROR);
    }
}

- (void)clearData {
    
    BOOL result = NO;
    result = [_fmdb executeUpdateWithFormat:@"delete from t_student"];
    if (!result) {
        NSLog(@"清空数据库失败:%@",ERROR);
    }
}

- (void)delegateWithName:(NSString *)name withAge:(NSString *)age {
    BOOL result = NO;
    result = [_fmdb executeUpdateWithFormat:@"delete from t_student where name = %@;",name];
    if (!result) {
        NSLog(@"删除失败:%@",ERROR);
    }
}

/*
 FMResultSet获取不同数据格式的方法
 
 intForColumn:
 longForColumn:
 longLongIntForColumn:
 boolForColumn:
 doubleForColumn:
 stringForColumn:
 dataForColumn:
 dataNoCopyForColumn:
 UTF8StringForColumnIndex:
 objectForColumn:
 
 文／陈向阳哈（简书作者）
 原文链接：http://www.jianshu.com/p/e2dbd69b6db2
 著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。
 */

- (NSMutableArray *)queryFromTable {
     //查询整个表
    FMResultSet *resultSet = [_fmdb executeQuery:@"select * from t_student"];

    NSMutableArray *array = [NSMutableArray array];
    while ([resultSet next]) {
        NSString *name       = [resultSet objectForColumnName:@"name"];
        NSString *age        = [resultSet objectForColumnName:@"age"];
        
        DataModel *model = [[DataModel alloc]init];
        [model setValue:name forKey:@"name"];
        [model setValue:age forKey:@"age"];
        [array addObject:model];
    }
    return array;
}

-(NSMutableArray *)queryFromDataBaseWithName:(NSString *)name {
    NSMutableArray *resultArr = [NSMutableArray array];
    FMResultSet *requestSet = [_fmdb executeQuery:@"select * from t_student where name=? order by age desc",name];
    while ([requestSet next]) {
        NSString *name       = [requestSet objectForColumnName:@"name"];
        NSString *age        = [requestSet objectForColumnName:@"age"];
        
        DataModel *model = [[DataModel alloc]init];
        [model setValue:name forKey:@"name"];
        [model setValue:age forKey:@"age"];
        [resultArr addObject:model];
    }
    return  resultArr;
}

- (NSMutableArray *)queryFromDataBaseWithAge:(NSString *)age byOrder:(BOOL)order {
    NSMutableArray *resultArr = [NSMutableArray array];
    FMResultSet *requestSet= nil;
    if (order) {
        requestSet = [_fmdb executeQuery:@"select * from t_student order by age ASC"];
    }else {
        requestSet = [_fmdb executeQuery:@"select * from t_student order by age DESC"];
    }
    
    while ([requestSet next]) {
        NSString *name       = [requestSet objectForColumnName:@"name"];
        NSString *age        = [requestSet objectForColumnName:@"age"];
        
        DataModel *model = [[DataModel alloc]init];
        [model setValue:name forKey:@"name"];
        [model setValue:age forKey:@"age"];
        [resultArr addObject:model];
    }
    
    return resultArr;
    
}

@end
