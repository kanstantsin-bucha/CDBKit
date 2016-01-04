

#import "CDBViewController.h"

@import CDBKit;


@interface CDBViewController ()

@property (copy, nonatomic) CDBArrayErrorCompletion completion;

@end


@implementation CDBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    DLogCDB(@"Debug log");
    
    RLogCDB(YES, @"Verbose log on");
    
    RLogCDB(NO, @"Verbose log off");
    
    WeakCDB(weakSelf);
    self.completion = ^(NSArray * _Nullable array, NSError * _Nullable error) {
        DLogCDB(@"array : %@", array);
        
        UILabel * label = [UILabel new];
        label.frame = weakSelf.view.frame;
        label.text = array.lastObject;
        [weakSelf.view addSubview:label];
        
        StrongObjCDB(strongSelf, weakSelf);
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
        completion(@[@"string1", LSCDB(CDBViewController_localizedString2)], nil);
    }
}

@end
