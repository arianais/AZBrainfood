//
//  GroceryStoresViewController.m
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "GroceryStoresViewController.h"

@interface GroceryStoresViewController ()

@end

@implementation GroceryStoresViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *websiteUrl = [NSURL URLWithString:@"https://www.google.com/maps/search/grocery+stores/"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webview loadRequest:urlRequest];
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

- (IBAction)back:(id)sender {
    [self.webview goBack];
}
- (IBAction)findGro:(id)sender {
    NSURL *websiteUrl = [NSURL URLWithString:@"https://www.google.com/maps/search/grocery+stores/"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webview loadRequest:urlRequest];
}
- (IBAction)findFood:(id)sender {
    NSURL *websiteUrl = [NSURL URLWithString:@"https://www.google.com/maps/search/grocery+stores/"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webview loadRequest:urlRequest];
}
@end
