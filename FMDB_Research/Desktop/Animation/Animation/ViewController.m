//
//  ViewController.m
//  Animation
//
//  Created by 刘松洪 on 16/9/7.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import "ViewController.h"
#import "GCDAsyncSocket.h"


#define SRV_CONNECTED 0
#define SRV_CONNECT_SUC 1
#define SRV_CONNECT_FAIL 2
#define HOST_IP @"192.168.110.1"
#define HOST_PORT 8080

@interface ViewController ()<GCDAsyncSocketDelegate>{
    CADisplayLink *_disPlayLink;
    UITextField *_textfield;
    GCDAsyncSocket *_socket;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self CaDisplayLink];//
    [self socketLink];
}

#pragma makr CADisplayLink
- (void)CaDisplayLink {
    _disPlayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(refreshScreen)];
    _disPlayLink.frameInterval = 2;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [_disPlayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [_disPlayLink removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

static int count = 0;
- (void)refreshScreen {
    if (count<121) {
    NSLog(@"%d",count++);
    NSLog(@"%f",_disPlayLink.duration);
    }
}

#pragma mark TCPSocket
- (void)socketLink {
     _textfield = [[UITextField alloc]init];
    [_textfield setFrame:CGRectMake(10, 50, 45, self.view.frame.size.width)];
    [self.view addSubview:_textfield];
    
    _socket = [[GCDAsyncSocket alloc]initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    _socket.IPv6Enabled = YES;
    [_socket connectToHost:HOST_IP onPort:HOST_PORT error:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
