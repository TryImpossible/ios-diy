//
//  EnvSwitchController.m
//  multichannel
//
//  Created by admin on 2021/3/9.
//

#import "EnvSwitchController.h"

@interface EnvSwitchController ()

@end

@implementation EnvSwitchController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(12, 44, 100, 20)];
    [self.view addSubview:label];
    [label setText:@"环境切换"];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
