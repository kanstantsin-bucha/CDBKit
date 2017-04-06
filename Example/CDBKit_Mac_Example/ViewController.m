//
//  ViewController.m
//  CDBKit_Mac_Example
//
//  Created by Bucha Kanstantsin on 4/6/17.
//  Copyright © 2017 yocaminobien. All rights reserved.
//

#import "ViewController.h"
#import <CDBKit/CDBKit.h>

@interface ViewController ()

@property (copy, nonatomic) CDBArrayErrorCompletion completion;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    weakCDB(weakSelf);
    self.completion = ^(NSArray * _Nullable array, NSError * _Nullable error) {
        
        NSTextField * label = [NSTextField new];
        [label setEditable:NO];
        [label setBezeled:NO];
        label.frame = weakSelf.view.frame;
        label.placeholderString = array.lastObject;
        label.font = [NSFont systemFontOfSize: 50.0];
        label.textColor = colorWithHex(@"11bb11");
        [weakSelf.view addSubview:label];
        
        strongObjCDB(strongSelf, weakSelf);
        strongSelf.view.layer.backgroundColor = colorWithRGB(250, 150, 250).CGColor;
    };
    
    [self makeArrayWithCompletion:self.completion];
}

- (void)makeArrayWithCompletion:(CDBArrayErrorCompletion)completion {
    if (completion != nil) {
        completion(@[@"string1", LSD(CDBViewController_localizedString2)], nil);
    }
}

@end
