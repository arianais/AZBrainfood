//
//  WebHomeViewController.h
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebHomeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *back;
@property (strong, nonatomic) IBOutlet UIWebView *webview;
@property (strong, nonatomic) NSString *link;
@end
