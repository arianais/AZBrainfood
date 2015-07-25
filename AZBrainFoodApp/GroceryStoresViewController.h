//
//  GroceryStoresViewController.h
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroceryStoresViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webview;
- (IBAction)back:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIButton *findGro;
- (IBAction)findGro:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *findFood;
- (IBAction)findFood:(id)sender;

@end
