//
//  ViewController.m
//  PDKeyChain
//
//  Created by Panda on 16/8/23.
//  Copyright © 2016年 v2panda. All rights reserved.
//

#import "ViewController.h"
#import "PDKeyChain.h"
#import "OpenUDID.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *openudid = [OpenUDID value];
    NSLog(@"openudid我来看看哈哈哈：%@",openudid);
    [self checkKeyChain];

}

- (void)checkKeyChain {
    
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain check: exist");
    }else {
        NSLog(@"keyChain check: absent");
    }
}

- (IBAction)save:(UIButton *)sender {
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"]];

    [PDKeyChain keyChainSave:[[NSUUID UUID]UUIDString]];
    NSLog(@"keyChain save success");
}

- (IBAction)load:(UIButton *)sender {
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain load fail");
    }else {
        NSLog(@"keyChain load success: %@ ",[PDKeyChain keyChainLoad]);
    }
}

- (IBAction)delete:(UIButton *)sender {
    [PDKeyChain keyChainDelete];
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain delete success ");
    }
}

@end
