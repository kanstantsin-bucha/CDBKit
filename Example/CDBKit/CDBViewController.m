

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
        [weakSelf.view addSubview:label];
        
        strongObjCDB(strongSelf, weakSelf);
        strongSelf.view.backgroundColor = RGBAColor(250, 150, 250, 0.8);
    };
    
    [self makeArrayWithCompletion:self.completion];
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
