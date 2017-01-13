//
//  SQLite.h
//  FMDB_Research
//
//  Created by 刘松洪 on 16/10/17.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SQLite : NSObject

+ (instancetype)shareInstance;

- (void)insertDataWithName:(NSString *)name withAge:(NSString *)age;

- (void)delegateWithName:(NSString *)name withAge:(NSString *)age;

- (void)clearData;

- (NSMutableArray *)queryFromqueryFromTable;//根据某个字段
- (NSMutableArray *)queryFromDataBaseWithName:(NSString *)name;
- (NSMutableArray *)queryFromDataBaseWithAge:(NSString *)age byOrder:(BOOL)order;//order==YES 升序，order==NO 降序
@end
