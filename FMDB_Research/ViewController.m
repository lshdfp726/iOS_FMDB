//
//  ViewController.m
//  FMDB_Research
//
//  Created by 刘松洪 on 16/10/17.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import "ViewController.h"
#import "SQLite.h"
#import "DataModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SQLite *sql = [SQLite shareInstance];
        [sql clearData];
    for (int i = 0 ; i < 10; i++) {
        [sql insertDataWithName:@"lsh726" withAge:[NSString stringWithFormat:@"%d",20 + rand()%(i+1)]];
        [sql insertDataWithName:@"jhy" withAge:[NSString stringWithFormat:@"%d",20 + rand()%(i+1)]];
    }
   
    
//    [sql delegateWithName:@"lsh726" withAge:nil];
    NSMutableArray *arr = [sql queryFromDataBaseWithName:@"lsh726"];
    for (DataModel *model in arr) {
        NSLog(@"name=%@,age=%@",model.name,model.age);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
