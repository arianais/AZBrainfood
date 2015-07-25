//
//  SponsorsViewController.m
//  AZBrainFoodApp
//
//  Created by thetriplets on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "SponsorsViewController.h"

@interface SponsorsViewController ()
- (IBAction)LinkButton:(id)sender;

@end

@implementation SponsorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

@end
