//
//  BrainfoodFactsViewController.m
//  AZBrainFoodApp
//
//  Created by thetriplets on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "BrainfoodFactsViewController.h"

@interface BrainfoodFactsViewController ()
- (IBAction)LinkButton:(id)sender;
- (IBAction)PLbutton:(id)sender;

@end

@implementation BrainfoodFactsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)LinkButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.azbrainfood.org"]];
}

- (IBAction)PLbutton:(id)sender {
    
}
@end
