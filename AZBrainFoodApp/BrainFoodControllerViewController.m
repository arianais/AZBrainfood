//
//  BrainFoodControllerViewController.m
//  AZBrainFoodApp
//
//  Created by thetriplets on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "BrainFoodControllerViewController.h"

@interface BrainFoodControllerViewController ()
- (IBAction)LinkButton:(id)sender;
- (IBAction)donateButton:(id)sender;
- (IBAction)aboutButton:(id)sender;
- (IBAction)printButton:(id)sender;
- (IBAction)timeButton:(id)sender;



@end

@implementation BrainFoodControllerViewController

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

- (IBAction)donateButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.sagepayments.net/eftcart/forms/donate.asp?M_id=749368775812"]];

}

- (IBAction)aboutButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.azbrainfood.org/about/"]];

}

- (IBAction)printButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.azbrainfood.org/wp-content/uploads/2010/08/donationform-cc.pdf"]];

}

- (IBAction)timeButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.azbrainfood.org/about/contact/"]];

}

@end
