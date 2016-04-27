#import "ViewController.h"
#import <Crashlytics/Crashlytics.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)crashButtonTapped:(UIButton *)sender {
    CLS_LOG(@"hit at %@", NSStringFromSelector(_cmd));
    [CrashlyticsKit crash];
}

@end
