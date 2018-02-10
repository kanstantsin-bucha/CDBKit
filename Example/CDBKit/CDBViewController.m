

#import "CDBViewController.h"

@import CDBKit;


@interface CDBViewController ()

@property (copy, nonatomic) CDBArrayErrorCompletion completion;

@end


@implementation CDBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    
    weakCDB(weakSelf);
    self.completion = ^(NSArray * _Nullable array, NSError * _Nullable error) {
        
        UILabel * label = [UILabel new];
        label.frame = weakSelf.view.frame;
        label.text = array.lastObject;
        label.font = [UIFont systemFontOfSize: 50.0];
        label.textColor = colorWithHex(@"11bb11");
        [weakSelf.view addSubview:label];
        
        strongObjCDB(strongSelf, weakSelf);
        strongSelf.view.backgroundColor = colorWithRGB(250, 150, 250);
    };
    
    [self makeArrayWithCompletion:self.completion];
    
    NSLog(@"%@", [@[@"a", @"b"] map:^id _Nonnull(NSString *  _Nonnull obj) {
        return [obj uppercaseString];
    }]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)makeArrayWithCompletion:(CDBArrayErrorCompletion)completion {
    if (completion != nil) {
        completion(@[@"string1", LSD(CDBViewController_localizedString2)], nil);
    }
}

@end
