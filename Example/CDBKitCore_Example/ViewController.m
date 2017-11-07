//
//  ViewController.m
//  CDBKitCore_Example
//
//  Created by Kanstantsin Bucha on 11/4/17.
//  Copyright © 2017 yocaminobien. All rights reserved.
//

#import "ViewController.h"
@import CDBKit;

@interface ViewController ()

@property (copy, nonatomic) CDBArrayErrorCompletion completion;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    weakCDB(weakSelf);
    self.completion = ^(NSArray * _Nullable array, NSError * _Nullable error) {
        
        UILabel * label = [UILabel new];
        label.frame = weakSelf.view.frame;
        label.text = array.lastObject;
        label.font = [UIFont systemFontOfSize: 50.0];
//        label.textColor = colorWithHex(@"11bb11");
        [weakSelf.view addSubview:label];
        
        strongObjCDB(strongSelf, weakSelf);
        strongSelf.view.backgroundColor = [UIColor redColor];
    };
    
    [self makeArrayWithCompletion: self.completion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)makeArrayWithCompletion:(CDBArrayErrorCompletion)completion {
    if (completion != nil) {
        completion(@[@"string1", @"222"], nil);
    }
}

@end
