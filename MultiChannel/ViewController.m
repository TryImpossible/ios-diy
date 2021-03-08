//
//  ViewController.m
//  multichannel
//
//  Created by admin on 2021/3/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UILabel *label = [[UILabel alloc] init];
    [self.view addSubview:label];
    label.frame = CGRectMake(12, 44, 375 - 24, 600);
    label.numberOfLines = 0;
    label.text = [NSString stringWithFormat:@"ENV: %@\nSERVER_URL: %@", ENV, SERVER_URL];
}


@end
