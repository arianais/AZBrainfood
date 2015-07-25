//
//  ViewController.m
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *keep = [[NSMutableArray alloc] initWithObjects:@"Pantry: 1-3 days\n Refrigerator: 3-4 weeks\n Freezer: 10-12 months",@"Pantry: 10-12 months\n Refrigerator: 10-12 months\n Freezer: 10-12 months",@"Refrigerator: 3-4 weeks\n Freezer: 12-18months",nil];
    NSMutableArray *links = [[NSMutableArray alloc] initWithObjects:@"http://www.stilltasty.com/fooditems/index/16383", @"http://www.stilltasty.com/fooditems/index/16669",@"http://www.stilltasty.com/fooditems/index/16704",nil];
    
    NSLog(@"num%@",self.index);

     self.keep.text =[keep objectAtIndex:[self.index integerValue]];
 
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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    WebExpireViewController *hi = (WebExpireViewController *)segue.destinationViewController;
    NSMutableArray *links = [[NSMutableArray alloc] initWithObjects:@"http://www.stilltasty.com/fooditems/index/16383", @"http://www.stilltasty.com/fooditems/index/16669",@"http://www.stilltasty.com/fooditems/index/16704",nil];
    hi.link = [links objectAtIndex:[self.index integerValue]];

    // imageViewController.message = self.selectedMessage;
    
    
    
}
@end
